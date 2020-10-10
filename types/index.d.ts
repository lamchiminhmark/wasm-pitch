export default class WasmPitch {
  constructor(wasmPath?: string);
  addListener(callback: (freq: number) => any): void;
  removeListener(callback: (freq: number) => any): void;
  init(options?: { sourceNode: AudioNode }): Promise<boolean>;
  getAudioContext(): AudioContext;
  start(): void;
  stop(): void;
  loaded(): boolean;
}
