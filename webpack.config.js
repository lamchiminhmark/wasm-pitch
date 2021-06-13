const path = require('path');

module.exports = {
  entry: './src/wasm-pitch.ts',
  module: {
    rules: [
      {
        test: /\.ts$/,
        use: 'ts-loader',
        exclude: /node_modules/,
      },
    ],
  },
  resolve: {
    extensions: ['.ts', '.ts', '.js'],
    fallback: {
      fs: false,
      path: false,
    },
  },
  output: {
    filename: 'index.js',
    path: path.resolve(__dirname, 'releases'),
    library: 'WasmPitch',
    libraryTarget: 'umd',
  },
};