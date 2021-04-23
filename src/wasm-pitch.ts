import * as createModule from '../releases/wasm_interface.js';

console.log('createModule', createModule);

interface WasmPitchModule extends EmscriptenModule {
  _get_pitch_mpm_c(samplesPointer: number, sampleSize: number, sampleRate: number): number;
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

  /** Internal wasm load state */
  private isLoaded = false;

  /** Is the audio initialized? */
  private isAudioInitialized = false;

  private sourceNode: MediaStreamAudioSourceNode;

  private moduleObj: WasmPitchModule;

  private loadingPromise: Promise<void>;

  constructor(pathToWasm: string = '') {
    console.log("WasmPitch instance", this);
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
        audio: true
      });
      this.sourceNode = audioContext.createMediaStreamSource(this.mediaStream);
      this.audioContext = audioContext;
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
    this.sourceNode.connect(this.processorNode);
    // The audio signal chain has to be completed by connecting to a destination
    this.processorNode.connect(this.audioContext.destination);
  }

  /**
   * Stops the pitch detection machinery
   */
  stop() {
    if (!this.isLoaded || !this.isAudioInitialized) throw Error('Must await WasmPitch.init() before calling stop.');
    if (!this.processorNode) throw Error('start() has not been called');

    if (this.mediaStream) this.mediaStream.getTracks()[0].stop();
    this.processorNode.disconnect();
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
