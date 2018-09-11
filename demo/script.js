const callbacks = [];
const index = 0;
let resolvePromise;
const moduleLoadingPromise = new Promise((resolve, reject) => resolvePromise = resolve);
let get_pitch_mpm_c;

// TODO Try mobile - wifi
var Module = {
  onRuntimeInitialized: () => {
    resolvePromise();
    get_pitch_mpm_c = Module.cwrap('get_pitch_mpm_c', 'number', ['number', 'number', 'number']);
  },

  start: () => {
    navigator.mediaDevices.getUserMedia({ audio: true }).then(mediaStream => {
        const ctx = new AudioContext();
        const sourceNode = ctx.createMediaStreamSource(mediaStream);
        const bufferLength = 1024
        const processorNode = ctx.createScriptProcessor(bufferLength, 1, 1);
        processorNode.onaudioprocess = evt => {
          console.log(`event fired`);
          const pCMArray = evt.inputBuffer.getChannelData(0);
          let buffer;
          try {
            buffer = Module._malloc(pCMArray.byteLength);
            Module.HEAPF32.set(pCMArray, buffer >> 2);
            const pitch = Module._get_pitch_mpm_c(buffer, pCMArray.length, evt.inputBuffer.sampleRate);
            callbacks.forEach(callback => callback(pitch));
          } catch (e) {
            throw e;
          } finally {
            Module._free(buffer);
          }
        }
        sourceNode.connect(processorNode);
        // The audio signal chain has to be completed by connecting to a destination
        processorNode.connect(ctx.destination);

        // ASK ML Is defining a property inside a property problematic? I had to do this because stop() needs to scope mediaStream and processorNode.
        Module.stop = () => {
          mediaStream.getTracks()[0].stop();
          processorNode.disconnect();
         };
    });
  },  

  addPitchListener: (callback) => {
    callbacks.push(callback);
  },

  removePitchListener: (callback) => {
    const index = callbacks.indexOf(callback);
    if (index === -1) return;
    callbacks.splice(index, 1);
  },

  loadingPromise: new Promise((resolve, reject) => {})
}