/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./demo/app.js":
/*!*********************!*\
  !*** ./demo/app.js ***!
  \*********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _releases_index_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../releases/index.js */ \"./releases/index.js\");\n/* harmony import */ var _releases_index_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_releases_index_js__WEBPACK_IMPORTED_MODULE_0__);\n\r\n\r\nconst buttonEl = document.querySelector('#start');\r\nconst pitchEl = document.querySelector('#pitch');\r\nconst setPitch = pitch => (pitchEl.innerText = pitch >= 0 ? pitch : '__');\r\n\r\n// Is it possible for the function to be static?\r\n// Let's go with non-static => Have to instantiate a wasm-pitch instance to use its functionality\r\n// wasmPitch has to be a class\r\nconst wasmPitch = new (_releases_index_js__WEBPACK_IMPORTED_MODULE_0___default())('/releases');\r\nwasmPitch.addListener(setPitch);\r\nwasmPitch.loadingPromise.then(() => {\r\n  buttonEl.disabled = false;\r\n  wasmPitch.addListener(setPitch);\r\n  // Initialize the button element\r\n\r\n  // CONTINUE(ML): setPitch is being called regardless whether started or stopped\r\n\r\n  buttonEl.onclick = () => {\r\n    if (buttonEl.dataset.state === 'off') {\r\n      buttonEl.innerText = 'Stop';\r\n      buttonEl.dataset.state = 'on';\r\n      wasmPitch.init().then(() => wasmPitch.start());\r\n    } else {\r\n      buttonEl.innerText = 'Start';\r\n      buttonEl.dataset.state = 'off';\r\n      wasmPitch.stop();\r\n    }\r\n  };\r\n})\r\n.catch(err => console.error(err));\r\n\n\n//# sourceURL=webpack://wasm-pitch/./demo/app.js?");

/***/ }),

/***/ "./releases/index.js":
/*!***************************!*\
  !*** ./releases/index.js ***!
  \***************************/
/***/ ((module) => {

eval("!function(e,t){ true?module.exports=t():0}(self,(function(){return(()=>{\"use strict\";var e,t,i,o,r={},s={};function n(e){var t=s[e];if(void 0!==t)return t.exports;var i=s[e]={exports:{}};return r[e](i,i.exports,n),i.exports}n.m=r,t=Object.getPrototypeOf?e=>Object.getPrototypeOf(e):e=>e.__proto__,n.t=function(i,o){if(1&o&&(i=this(i)),8&o)return i;if(\"object\"==typeof i&&i){if(4&o&&i.__esModule)return i;if(16&o&&\"function\"==typeof i.then)return i}var r=Object.create(null);n.r(r);var s={};e=e||[null,t({}),t([]),t(t)];for(var a=2&o&&i;\"object\"==typeof a&&!~e.indexOf(a);a=t(a))Object.getOwnPropertyNames(a).forEach((e=>s[e]=()=>i[e]));return s.default=()=>i,n.d(r,s),r},n.d=(e,t)=>{for(var i in t)n.o(t,i)&&!n.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},n.f={},n.e=e=>Promise.all(Object.keys(n.f).reduce(((t,i)=>(n.f[i](e,t),t)),[])),n.u=e=>e+\".index.js\",n.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),i={},o=\"WasmPitch:\",n.l=(e,t,r,s)=>{if(i[e])i[e].push(t);else{var a,c;if(void 0!==r)for(var d=document.getElementsByTagName(\"script\"),u=0;u<d.length;u++){var l=d[u];if(l.getAttribute(\"src\")==e||l.getAttribute(\"data-webpack\")==o+r){a=l;break}}a||(c=!0,(a=document.createElement(\"script\")).charset=\"utf-8\",a.timeout=120,n.nc&&a.setAttribute(\"nonce\",n.nc),a.setAttribute(\"data-webpack\",o+r),a.src=e),i[e]=[t];var h=(t,o)=>{a.onerror=a.onload=null,clearTimeout(f);var r=i[e];if(delete i[e],a.parentNode&&a.parentNode.removeChild(a),r&&r.forEach((e=>e(o))),t)return t(o)},f=setTimeout(h.bind(null,void 0,{type:\"timeout\",target:a}),12e4);a.onerror=h.bind(null,a.onerror),a.onload=h.bind(null,a.onload),c&&document.head.appendChild(a)}},n.r=e=>{\"undefined\"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:\"Module\"}),Object.defineProperty(e,\"__esModule\",{value:!0})},n.p=\"./releases\",(()=>{var e={179:0};n.f.j=(t,i)=>{var o=n.o(e,t)?e[t]:void 0;if(0!==o)if(o)i.push(o[2]);else{var r=new Promise(((i,r)=>o=e[t]=[i,r]));i.push(o[2]=r);var s=n.p+n.u(t),a=new Error;n.l(s,(i=>{if(n.o(e,t)&&(0!==(o=e[t])&&(e[t]=void 0),o)){var r=i&&(\"load\"===i.type?\"missing\":i.type),s=i&&i.target&&i.target.src;a.message=\"Loading chunk \"+t+\" failed.\\n(\"+r+\": \"+s+\")\",a.name=\"ChunkLoadError\",a.type=r,a.request=s,o[1](a)}}),\"chunk-\"+t,t)}};var t=(t,i)=>{var o,r,[s,a,c]=i,d=0;for(o in a)n.o(a,o)&&(n.m[o]=a[o]);for(c&&c(n),t&&t(i);d<s.length;d++)r=s[d],n.o(e,r)&&e[r]&&e[r][0](),e[s[d]]=0},i=self.webpackChunkWasmPitch=self.webpackChunkWasmPitch||[];i.forEach(t.bind(null,0)),i.push=t.bind(null,i.push.bind(i))})();var a={};n.r(a),n.d(a,{default:()=>d});var c=function(e,t,i,o){return new(i||(i=Promise))((function(r,s){function n(e){try{c(o.next(e))}catch(e){s(e)}}function a(e){try{c(o.throw(e))}catch(e){s(e)}}function c(e){var t;e.done?r(e.value):(t=e.value,t instanceof i?t:new i((function(e){e(t)}))).then(n,a)}c((o=o.apply(e,t||[])).next())}))};class d{constructor(e=\"\",t={}){this.mediaTrackOptions=t,this.callbacks=[],this.filterNodes=[],this.isRunning=!1,this.isLoaded=!1,this.isAudioInitialized=!1,this.initWasm(e)}get filteredNode(){return this.filterNodes.length?this.filterNodes[this.filterNodes.length-1]:this.sourceNode}initWasm(e){return c(this,void 0,void 0,(function*(){this.loadingPromise=new Promise(((t,i)=>c(this,void 0,void 0,(function*(){const o=yield n.e(323).then(n.t.bind(n,323,23));console.log({createModule:o}),console.dir(o,{depth:1/0}),this.moduleObj=yield o({onRuntimeInitialized:()=>{this.isLoaded=!0,t()},onAbort:e=>{i(\"Loading of wasm-pitch aborted\"),console.error(e)},locateFile:()=>e+\"/wasm_interface.wasm\"})}))))}))}init(e){return c(this,void 0,void 0,(function*(){if(e)this.audioContext=e.context,this.sourceNode=e;else{const e=new AudioContext;this.mediaStream=yield navigator.mediaDevices.getUserMedia({audio:this.mediaTrackOptions}),this.sourceNode=e.createMediaStreamSource(this.mediaStream),this.audioContext=e,this.createFilterNodes()}this.processorNode=this.audioContext.createScriptProcessor(1024,1,1),this.processorNode.onaudioprocess=e=>{const t=e.inputBuffer.getChannelData(0);let i;try{i=this.moduleObj._malloc(t.byteLength),this.moduleObj.HEAPF32.set(t,i>>2);const o=this.moduleObj._get_pitch_mpm_c(i,t.length,e.inputBuffer.sampleRate);this.callbacks.forEach((e=>e(o)))}catch(e){throw e}finally{this.moduleObj._free(i)}};try{return yield this.loadingPromise,this.isAudioInitialized=!0,this}catch(e){throw e}}))}createFilterNodes(){if(this.mediaTrackOptions.lowCutFrequencyHz||this.mediaTrackOptions.highCutFrequencyHz){if(this.mediaTrackOptions.lowCutFrequencyHz){const e=this.audioContext.createBiquadFilter();e.type=\"highpass\",e.frequency.value=this.mediaTrackOptions.lowCutFrequencyHz,e.Q.value=this.mediaTrackOptions.filterQualityFactor||1,this.filterNodes.push(e)}if(this.mediaTrackOptions.highCutFrequencyHz){const e=this.audioContext.createBiquadFilter();e.type=\"lowpass\",e.frequency.value=this.mediaTrackOptions.highCutFrequencyHz,e.Q.value=this.mediaTrackOptions.filterQualityFactor||1,this.filterNodes.push(e)}}}getAudioContext(){return this.audioContext}start(){if(!this.isLoaded||!this.isAudioInitialized)throw Error(\"Must await WasmPitch.init() before calling start.\");const e=[this.sourceNode,...this.filterNodes,this.processorNode,this.audioContext.destination];console.log(\"signal chain\",e),e.reduce(((e,t)=>(e.connect(t),t))),this.isRunning=!0}stop(){if(this.isRunning=!1,!this.isLoaded||!this.isAudioInitialized)throw Error(\"Must await WasmPitch.init() before calling stop.\");if(!this.processorNode)throw Error(\"start() has not been called\");this.mediaStream&&this.mediaStream.getTracks()[0].stop(),[this.sourceNode,...this.filterNodes,this.processorNode,this.audioContext.destination].forEach((e=>e.disconnect()))}addListener(e){this.callbacks.push(e)}removeListener(e){const t=this.callbacks.indexOf(e);return-1!==t&&(this.callbacks.splice(t,1),!0)}}return a})()}));\n\n//# sourceURL=webpack://wasm-pitch/./releases/index.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	(() => {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = (module) => {
/******/ 			var getter = module && module.__esModule ?
/******/ 				() => (module['default']) :
/******/ 				() => (module);
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./demo/app.js");
/******/ 	
/******/ })()
;