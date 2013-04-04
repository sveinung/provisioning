#!/bin/bash

pushd /vagrant/bash/infrastructure

source provisioner.sh

sudo apt-get update

if [[ `hostname` == "node1.lan" ]]; then
  _package "openjdk-7-jre-headless"
fi

popd
