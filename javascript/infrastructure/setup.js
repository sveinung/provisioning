require('shelljs/global');
var _  = require('underscore');
_.str = require('underscore.string');
_.mixin(_.str.exports());

console.log("Provisioning with JavaScript");

nodes({
  'master.lan': function() {
    console.log("Master");
  },
  'node1.lan': function() {
    console.log("Node 1");
  }
});

function nodes(hosts) {
  var hostname = _.trim(exec('hostname').output);
  var currentNode = hosts[hostname];
  currentNode();
}
