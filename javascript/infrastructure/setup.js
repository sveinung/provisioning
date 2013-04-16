var nodes = require('./provisioner/nodes');

console.log("Provisioning with JavaScript");

nodes({
  'master.lan': function() {
    console.log("Master");
  },
  'node1.lan': function() {
    console.log("Node 1");
  }
});

