# wasm-pitch
> C++ - WASM pitch detection API

## Example
```javascript
    import WasmPitch from 'wasm-pitch';

    const wasmPitch = new WasmPitch('/path/to/wasm/directory');
    wasmPitch.addListener(/* Callback functions with a frequency parameter goes here */);
    wasmPitch.init().then(() => wasmPitch.start());
```

## Demo
`yarn demo`
Then point your browser at http://localhost:9000/demo

## Build Instructions
1. `yarn` to install dependencies.
2. You will need to download & install [Emscripten](https://emscripten.org/docs/getting_started/downloads.html) if you don't have it installed already. (On Mac, `brew install emscripten`.)
3. Then run `make` from the root directory.
