require('shelljs/global');
var _ = require('underscore');

module.exports = function(options) {
  var command = 'sudo apt-get --quiet --yes install ' + options.name;
  if (!_.isUndefined(options.version)) {
    command += '=' + options.version;
  }

  var result = exec(command);

  if (result.code === 0) {
    console.log('Installed ', options.name, ' successfully');
  } else {
    console.log('Installing ', options.name, ' failed');
  }
};

