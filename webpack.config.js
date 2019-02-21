const path = require('path');

module.exports = {
  entry: path.resolve(__dirname, 'demo') + '/app.js',

  output: {
    path: path.resolve(__dirname, 'demo'),
    filename: 'bundle.js'
  },

  node: {
    fs: 'empty'
  },

  mode: 'development',
  target: 'node',
  module: {
    rules: [
      {
        test: /wasm_pitch\.wasm$/,
        type: 'javascript/auto',
        loader: 'file-loader',
        options: {
          publicPath: '../releases'
        }
      }
    ]
  }
};
