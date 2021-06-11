import * as createModule from '../releases/wasm_interface.js';

interface WasmPitchModule extends EmscriptenModule {
  _get_pitch_mpm_c(samplesPointer: number, sampleSize: number, sampleRate: number): number;
}

/**
 * Configuration settings for user media.
 */
export interface WasmPitchMediaTrackConstraints {
  autoGainControl?: boolean;
  echoCancellation?: boolean;
  noiseSuppression?: boolean;
  /**
   * When present, applies a low cut filter to everything below
   * the specified frequency.
   */
  lowCutFrequencyHz?: number;
  /**
   * When present, applies a high cut filter to everything above
   * the specified frequency.
   */
  highCutFrequencyHz?: number;
  /**
   * 0-1, default 1. How steep the cutoff is at the band pass/cut frequencies.
   * Only has an effect if lowCutFrequencyHz or highCutFrequencyHz are present.
   */
  filterQualityFactor?: number;
}

export default class WasmPitch {
  private callbacks: ((freq: number) => void)[] = [];

  private mediaStream: MediaStream;

  /** This instance's AudioContext */
  private audioContext: AudioContext | BaseAudioContext;

  /**
   * Although this approach is deprecated in favor of audio worklets, we cannot move
   * on until Safari decides to support worklets.
   */
  private processorNode: ScriptProcessorNode;

  /**
   * Used if lowCutFrequencyHz or highCutFrequencyHz present in options.
   */
  private filterNodes: BiquadFilterNode[] = [];

  /**
   * Has the wasm pitch instance been started?
   */
  public isRunning = false;

  /** Internal wasm load state */
  private isLoaded = false;

  /** Is the audio initialized? */
  public isAudioInitialized = false;

  private sourceNode: MediaStreamAudioSourceNode;

  private moduleObj: WasmPitchModule;

  private loadingPromise: Promise<void>;

  constructor(pathToWasm: string = '', private mediaTrackOptions: WasmPitchMediaTrackConstraints = {}) {
    this.initWasm(pathToWasm);
  }

  private async initWasm(pathToWasm: string) {
    this.loadingPromise = new Promise(async (resolve, reject) => {
      // Initialises the module object on top of the existing this.moduleObj
      this.moduleObj = await (createModule as EmscriptenModuleFactory<WasmPitchModule>)({
        onRuntimeInitialized: () => {
          this.isLoaded = true;
          resolve();
        },

        onAbort: (err) => {
          reject('Loading of wasm-pitch aborted');
          console.error(err);
        },

        locateFile: () => {
          // WANT: Resolve modules instead of concatting strings
          return pathToWasm + '/wasm_interface.wasm';
        }
      });
    });
  }

  /**
   * Initialize audio from a source or, if none is provided, by requesting
   * access to the user's microphone.
   * 
   * Must be called before calling WasmPitch.start()
   * @param sourceNode 
   */
  async init(sourceNode?: MediaStreamAudioSourceNode) {
    if (sourceNode) {
      this.audioContext = sourceNode.context;
      this.sourceNode = sourceNode;
    } else {
      const audioContext = new AudioContext();
      // Get the media stream from client's microphone using the WebRTC API
      this.mediaStream = await navigator.mediaDevices.getUserMedia({
        audio: this.mediaTrackOptions
      });

      this.sourceNode = audioContext.createMediaStreamSource(this.mediaStream);
      this.audioContext = audioContext;
      this.createFilterNodes();
    }

    // Set up the audio processing using AudioProcessorNode API
    const bufferLength = 1024;
    this.processorNode = this.audioContext.createScriptProcessor(bufferLength, 1, 1);
    this.processorNode.onaudioprocess = evt => {
      const pCMArray = evt.inputBuffer.getChannelData(0);
      let bufferPointer: number;
      try {
        bufferPointer = this.moduleObj._malloc(pCMArray.byteLength);
        this.moduleObj.HEAPF32.set(pCMArray, bufferPointer >> 2);
        const pitch = this.moduleObj._get_pitch_mpm_c(
          bufferPointer,
          pCMArray.length,
          evt.inputBuffer.sampleRate
        );
        this.callbacks.forEach(callback => callback(pitch));
      } catch (e) {
        throw e;
      } finally {
        this.moduleObj._free(bufferPointer);
      }
    };

    try {
      await this.loadingPromise;
      this.isAudioInitialized = true;
      return this;
    } catch (e) {
      throw e;
    }    
  }

  private createFilterNodes() {
    if (!this.mediaTrackOptions.lowCutFrequencyHz && !this.mediaTrackOptions.highCutFrequencyHz) return;

    if (this.mediaTrackOptions.lowCutFrequencyHz) {
      const filterNode = this.audioContext.createBiquadFilter();
      filterNode.type = 'highpass';
      filterNode.frequency.value = this.mediaTrackOptions.lowCutFrequencyHz;
      filterNode.Q.value = this.mediaTrackOptions.filterQualityFactor || 1;
      this.filterNodes.push(filterNode);
    }

    if (this.mediaTrackOptions.highCutFrequencyHz) {
      const filterNode = this.audioContext.createBiquadFilter();
      filterNode.type = 'lowpass';
      filterNode.frequency.value = this.mediaTrackOptions.highCutFrequencyHz;
      filterNode.Q.value = this.mediaTrackOptions.filterQualityFactor || 1;
      this.filterNodes.push(filterNode);
    }
  }

  /** 
   * Gets the AudioContext being used
   */
  getAudioContext() {
    return this.audioContext;
  }

  /**
   * Starts the pitch dictation machinery
   */
  start() {
    if (!this.isLoaded || !this.isAudioInitialized) throw Error('Must await WasmPitch.init() before calling start.');
    const signalChain = [
      this.sourceNode,
      ...this.filterNodes,
      this.processorNode,
      this.audioContext.destination,
    ];
    console.log('signal chain', signalChain);
    signalChain.reduce((a, b) => { a.connect(b); return b });
    this.isRunning = true;
  }

  /**
   * Stops the pitch detection machinery
   */
  stop() {
    this.isRunning = false;
    if (!this.isLoaded || !this.isAudioInitialized) throw Error('Must await WasmPitch.init() before calling stop.');
    if (!this.processorNode) throw Error('start() has not been called');

    if (this.mediaStream) this.mediaStream.getTracks()[0].stop();
    const signalChain = [
      this.sourceNode,
      ...this.filterNodes,
      this.processorNode,
      this.audioContext.destination,
    ];
    signalChain.forEach(node => node.disconnect());
  }

  /**
   * Add callbacks that are called whenever a frequency is dictated
   * @param {(freq: number) => any} callback argument freq is -1 when input is so soft that 
   * a pitch cannot be detected
   */
  addListener(callback: (freq: number) => void) {
    this.callbacks.push(callback);
  }

  removeListener(callback: (freq: number) => void) {
    const index = this.callbacks.indexOf(callback);
    if (index === -1) return false;
    this.callbacks.splice(index, 1);
    return true;
  }
}
