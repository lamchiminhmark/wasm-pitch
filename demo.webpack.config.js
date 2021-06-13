const path = require('path');

module.exports = {
    entry: path.resolve(__dirname, 'demo') +'/app.js',

    output: {
        path: path.resolve(__dirname, 'demo'),
        filename:'bundle.js'
    },
    devServer: {
        contentBase: path.join(__dirname, '/'),
        port: 9000,
    },
    mode: 'development',
    target: 'node',
};