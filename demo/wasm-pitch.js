import * as createModule from './wasm_interface.js';

export default class WasmPitch {
  constructor() {
    this.callbacks = [];
    // TODO(ML): Research if there is a better way to tell if an instance of the class has fully loaded.
    // Currently, I'm using a loadingPromise object to tell if the class has loaded the module object.
    this.mediaStream;
    this.processorNode;
    this.loadingPromise = new Promise((resolve, reject) => {
      this.moduleObj = {
        onRuntimeInitialized: () => {
          resolve();
        },

        onAbort: () => {
          reject('Loading of wasm-pitch aborted');
        }
      };
    });

    createModule(this.moduleObj);
  }

  /**
   * Starts the pitch dictation machinery
   */
  async start() {

    // Check that the wasm Module object is fully loaded
    try {
      await this.loaded();
    } catch (e) {
      throw e;
    }

    // Get the media stream from client's microphone using the WebRTC API
    try {
      this.mediaStream = await navigator.mediaDevices.getUserMedia({ audio: true });
    } catch (e) {
      throw e;
    }

    // Set up the audio processing using WebAudio API
    const ctx = new AudioContext();
    const sourceNode = ctx.createMediaStreamSource(this.mediaStream);
    const bufferLength = 1024;
    this.processorNode = ctx.createScriptProcessor(bufferLength, 1, 1);
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
    sourceNode.connect(this.processorNode);
    // The audio signal chain has to be completed by connecting to a destination
    this.processorNode.connect(ctx.destination);
  }

  /**
   *  Resolves when the wasm module has been loaded, rejects if module loader throws error  
   */
  async loaded() {
    try {
      await this.loadingPromise;
      return;
    } catch (e) {
      throw e;
    }
  }

  /**
   * Stops the pitch detection machinery
   */
  stop() {
    if (!this.mediaStream || !this.processorNode) throw Error('start() has not been called');
    
    this.mediaStream.getTracks()[0].stop();
    this.processorNode.disconnect();
  }

  addListener(callback) {
    this.callbacks.push(callback);
  }

  removePitchListener(callback) {
    const index = this.callbacks.indexOf(callback);
    if (index === -1) return;
    callbacks.splice(index, 1);
  }
}