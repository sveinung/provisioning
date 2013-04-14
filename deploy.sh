#!/bin/bash

USER=vagrant
HOST=localhost
PORT=2200

scp -P $PORT build/libs/app.jar $USER@$HOST:/home/vagrant/
scp -P $PORT -r deploy/ $USER@$HOST:/home/vagrant
ssh -p $PORT -t $USER@$HOST "deploy/install.sh"

