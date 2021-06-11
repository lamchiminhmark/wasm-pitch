/**
 * Configuration settings for user media.
 */
export interface WasmPitchMediaTrackConstraints {
    autoGainControl?: boolean;
    echoCancellation?: boolean;
    noiseSuppression?: boolean;
    /**
     * When present, applies a low cut filter to everything below
     * the specified frequency.
     */
    lowCutFrequencyHz?: number;
    /**
     * When present, applies a high cut filter to everything above
     * the specified frequency.
     */
    highCutFrequencyHz?: number;
    /**
     * 0-1, default 1. How steep the cutoff is at the band pass/cut frequencies.
     * Only has an effect if lowCutFrequencyHz or highCutFrequencyHz are present.
     */
    filterQualityFactor?: number;
}
export default class WasmPitch {
    private mediaTrackOptions;
    private callbacks;
    private mediaStream;
    /** This instance's AudioContext */
    private audioContext;
    /**
     * Although this approach is deprecated in favor of audio worklets, we cannot move
     * on until Safari decides to support worklets.
     */
    private processorNode;
    /**
     * Used if lowCutFrequencyHz or highCutFrequencyHz present in options.
     */
    private filterNodes;
    /**
     * Has the wasm pitch instance been started?
     */
    isRunning: boolean;
    /** Internal wasm load state */
    private isLoaded;
    /** Is the audio initialized? */
    isAudioInitialized: boolean;
    private sourceNode;
    private moduleObj;
    private loadingPromise;
    constructor(pathToWasm?: string, mediaTrackOptions?: WasmPitchMediaTrackConstraints);
    private initWasm;
    /**
     * Initialize audio from a source or, if none is provided, by requesting
     * access to the user's microphone.
     *
     * Must be called before calling WasmPitch.start()
     * @param sourceNode
     */
    init(sourceNode?: MediaStreamAudioSourceNode): Promise<this>;
    private createFilterNodes;
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