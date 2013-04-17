var nodes = require('./provisioner/nodes');
var pkg = require('./provisioner/pkg');
var nginx = require('./nginx/nginx');

console.log("Provisioning with JavaScript");

nodes({
  'master.lan': function() {
    console.log("Master");

    nginx();
  },
  'node1.lan': function() {
    console.log("Node 1");

    pkg({
      name: 'openjdk-7-jre-headless',
      version: '7u15-2.3.7*'
    });
  }
});

