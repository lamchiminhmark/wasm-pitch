import * as createModule from './wasm_interface.js';

export default class WasmPitch {
  constructor(prefixToWasm) {
    this.callbacks = [];
    this.mediaStream;
    /** This instance's AudioContext */
    this.audioContext;
    this.processorNode;
    /** Internal wasm load state */
    this.isLoaded = false;

    this.loadingPromise = new Promise((resolve, reject) => {
      this.moduleObj = {
        onRuntimeInitialized: () => {
          resolve();
        },

        onAbort: () => {
          reject('Loading of wasm-pitch aborted');
        },

        locateFile: () => {
          // WANT: Resolve modules instead of concatting strings
          return prefixToWasm + '/wasm_interface.wasm';
        }
      };
    });

    // Initialises the module object on top of the existing this.moduleObj
    createModule(this.moduleObj);
  }

  /**
   *  **MUST BE CALLED FIRST**: returns true if wasm module has been loaded, rejects if module loader throws error
   */
  async init({sourceNode} = {}) {
    this.audioContext = sourceNode ? sourceNode.context : new AudioContext();
    if (!sourceNode) {
      // Get the media stream from client's microphone using the WebRTC API
      try {
        this.mediaStream = await navigator.mediaDevices.getUserMedia({
          audio: true
        });
      } catch (e) {
        throw e;
      }
      this.sourceNode = this.audioContext.createMediaStreamSource(this.mediaStream);
    } else {
      this.sourceNode = sourceNode;
    }

    // Set up the audio processing using AudioProcessorNode API
    const bufferLength = 1024;
    this.processorNode = this.audioContext.createScriptProcessor(bufferLength, 1, 1);
    this.processorNode.onaudioprocess = evt => {
      const pCMArray = evt.inputBuffer.getChannelData(0);
      let buffer;
      try {
        buffer = this.moduleObj._malloc(pCMArray.byteLength);
        this.moduleObj.HEAPF32.set(pCMArray, buffer >> 2);
        const pitch = this.moduleObj._get_pitch_mpm_c(
          buffer,
          pCMArray.length,
          evt.inputBuffer.sampleRate
        );
        this.callbacks.forEach(callback => callback(pitch));
      } catch (e) {
        throw e;
      } finally {
        this.moduleObj._free(buffer);
      }
    };

    try {
      await this.loadingPromise;
      this.isLoaded = true;
      return true;
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
   * 
   */
  loaded() {
    return 
  }

  /**
   * Starts the pitch dictation machinery
   */
  async start() {
    
    this.sourceNode.connect(this.processorNode);
    // The audio signal chain has to be completed by connecting to a destination
    this.processorNode.connect(this.audioContext.destination);
  }

  /**
   * Stops the pitch detection machinery
   */
  stop() {
    if (!this.processorNode) throw Error('start() has not been called');

    if (this.mediaStream) this.mediaStream.getTracks()[0].stop();
    this.processorNode.disconnect();
  }

  /**
   * Add callbacks that are called whenever a frequency is dictated
   * @param {(freq: number) => any} callback argument freq is -1 when input is so soft that 
   * a pitch cannot be detected
   */
  addListener(callback) {
    this.callbacks.push(callback);
  }

  removeListener(callback) {
    const index = this.callbacks.indexOf(callback);
    if (index === -1) return;
    callbacks.splice(index, 1);
  }
}
