var nodes = require('./provisioner/nodes');
var package = require('./provisioner/package');

console.log("Provisioning with JavaScript");

nodes({
  'master.lan': function() {
    console.log("Master");
  },
  'node1.lan': function() {
    console.log("Node 1");

    package({
      name: 'openjdk-7-jre-headless',
      version: '7u15-2.3.7*'
    });
  }
});

