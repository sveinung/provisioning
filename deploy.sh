#!/bin/bash
#scp -P 2222 build/libs/provisioning.jar vagrant@localhost:/home/vagrant/
vagrant ssh node1 -c "/vagrant/deploy/install.sh"
