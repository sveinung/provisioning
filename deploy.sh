#!/bin/bash
scp -P 2200 build/libs/app.jar vagrant@localhost:/home/vagrant/
scp -P 2200 -r deploy/ vagrant@localhost:/home/vagrant
ssh -p 2200 -t vagrant@localhost "deploy/install.sh"

