require('shelljs/global');
var promisify = require('deferred').promisify;
var fs = require('fs');

var readFile = promisify(fs.readFile, 1);
var writeFile = promisify(fs.writeFile);

var file = function(options) {
  cp(options.source, options.name);
};

module.exports = file;
