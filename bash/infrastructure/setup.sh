#!/bin/bash

set -e

pushd /vagrant/bash/infrastructure

source provisioner.sh

sudo apt-get update

if [[ `hostname` == "master.lan" ]]; then
  _include nginx
  _nginx
  _nginx_reverse_proxy "app"

elif [[ `hostname` == "node1.lan" ]]; then
  _package "openjdk-7-jre-headless"
fi

popd
