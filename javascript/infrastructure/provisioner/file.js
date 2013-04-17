require('shelljs/global');
var _ = require('underscore');

var file = function(options) {
  cp('-f', options.source, options.name);

  if (!_.isUndefined(options.mode)) {
    chmod(options.mode, options.name);
  }
};

module.exports = file;
