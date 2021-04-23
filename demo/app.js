import WasmPitch from '../releases/wasm-pitch';

const buttonEl = document.querySelector('#start');
const pitchEl = document.querySelector('#pitch');
const setPitch = pitch => (pitchEl.innerText = pitch >= 0 ? pitch : '__');

// Is it possible for the function to be static?
// Let's go with non-static => Have to instantiate a wasm-pitch instance to use its functionality
// wasmPitch has to be a class
const wasmPitch = new WasmPitch('/releases');
wasmPitch.addListener(setPitch);
wasmPitch.loadingPromise.then(() => {
  buttonEl.disabled = false;
  wasmPitch.addListener(setPitch);
  // Initialize the button element

  // CONTINUE(ML): setPitch is being called regardless whether started or stopped

  buttonEl.onclick = () => {
    if (buttonEl.dataset.state === 'off') {
      buttonEl.innerText = 'Stop';
      buttonEl.dataset.state = 'on';
      wasmPitch.init().then(() => wasmPitch.start());
    } else {
      buttonEl.innerText = 'Start';
      buttonEl.dataset.state = 'off';
      wasmPitch.stop();
    }
  };
})
.catch(err => console.error(err));
