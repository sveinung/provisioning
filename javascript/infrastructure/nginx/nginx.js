var pkg = require('../provisioner/pkg');

var nginx = function() {
  pkg({
    name: 'nginx',
    version: '1.1.19*'
  });
};

module.exports = nginx;
