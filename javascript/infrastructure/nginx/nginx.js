var pkg = require('../provisioner/pkg');
var file = require('../provisioner/file');

var nginx = function() {
  pkg({
    name: 'nginx',
    version: '1.1.19*'
  });

  file({
    name: '/etc/nginx/nginx.conf',
    source: __dirname + '/nginx.conf',
    mode: '644',
    owner: 'root',
    group: 'root'
  });
};

module.exports = nginx;
