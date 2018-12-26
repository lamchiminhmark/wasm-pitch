const importObj = {
  env: {
    memory: new WebAssembly.Memory({ initial: 256, maximum: 256 }),
    memoryBase: 0,
    table: new WebAssembly.Table({ element: "anyfunc", initial: 8 }),
    tableBase: 0,
    abort: function(code) {}
  }
};

WebAssembly.instantiateStreaming(fetch("wasm_interface.wasm"), importObj).then(
  obj => {
    alert(hi);
  }
);
