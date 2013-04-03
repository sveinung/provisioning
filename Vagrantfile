# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.define :master do |master|
    master.vm.hostname = "master.lan"
    master.vm.network :private_network, ip: "10.10.10.10"
  end

  config.vm.define :node1 do |node1|
    node1.vm.hostname = "node1.lan"
    node1.vm.network :private_network, ip: "10.10.10.11"
  end
end
