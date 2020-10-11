# wasm-pitch
> C++ - WASM pitch detection API

## Example
```javascript
    import WasmPitch from 'wasm-pitch';

    const wasmPitch = new WasmPitch();
    wasmPitch.addListener(/* Callback functions with a pitch parameter goes here */);
    wasmPitch.start();
```

## Demo
Check out the demo directory

## Build Instructions
1. You will need to download & install [Emscripten](https://emscripten.org/docs/getting_started/downloads.html) if you don't have it installed already. (On Mac, `brew install emscripten`.)
2. Then run `make` from the root directory.

