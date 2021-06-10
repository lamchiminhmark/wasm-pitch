/**
 * Configuration settings for user media.
 */
export interface WasmPitchMediaTrackConstraints {
    autoGainControl?: boolean;
    echoCancellation?: boolean;
    noiseSuppression?: boolean;
}
export default class WasmPitch {
    private mediaTrackConstraints;
    private callbacks;
    private mediaStream;
    /** This instance's AudioContext */
    private audioContext;
    /**
     * Although this approach is deprecated in favor of audio worklets, we cannot move
     * on until Safari decides to support worklets.
     */
    private processorNode;
    /** Internal wasm load state */
    private isLoaded;
    /** Is the audio initialized? */
    private isAudioInitialized;
    private sourceNode;
    private moduleObj;
    private loadingPromise;
    constructor(pathToWasm?: string, mediaTrackConstraints?: WasmPitchMediaTrackConstraints);
    private initWasm;
    /**
     * Initialize audio from a source or, if none is provided, by requesting
     * access to the user's microphone.
     *
     * Must be called before calling WasmPitch.start()
     * @param sourceNode
     */
    init(sourceNode?: MediaStreamAudioSourceNode): Promise<this>;
    /**
     * Gets the AudioContext being used
     */
    getAudioContext(): AudioContext | BaseAudioContext;
    /**
     * Starts the pitch dictation machinery
     */
    start(): void;
    /**
     * Stops the pitch detection machinery
     */
    stop(): void;
    /**
     * Add callbacks that are called whenever a frequency is dictated
     * @param {(freq: number) => any} callback argument freq is -1 when input is so soft that
     * a pitch cannot be detected
     */
    addListener(callback: (freq: number) => void): void;
    removeListener(callback: (freq: number) => void): boolean;
}
//# sourceMappingURL=wasm-pitch.d.ts.map