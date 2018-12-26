const path = require('path');
const fs = require('fs');

module.exports = {
    entry: path.resolve(__dirname, 'demo') +'/script.js',

    output: {
        path: path.resolve(__dirname, 'demo'),
        filename:'bundle.js'
    },

    mode: 'development',
    target: 'node',
};