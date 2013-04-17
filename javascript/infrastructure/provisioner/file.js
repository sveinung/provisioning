require('shelljs/global');

var file = function(options) {
  cp(options.source, options.name);
};

module.exports = file;
