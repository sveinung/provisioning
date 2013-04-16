require('shelljs/global');
_s = require('underscore.string');

module.exports = function(hosts) {
  var hostname = _s.trim(exec('hostname').output);
  var currentNode = hosts[hostname];
  currentNode();
};

