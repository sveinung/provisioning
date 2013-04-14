#!/bin/bash

USER=vagrant
HOST=localhost
PORT=2200

SSH_SOCKET=~/.ssh/$USER@$HOST

ssh -M -f -N -p $PORT -o ControlPath=$SSH_SOCKET $USER@$HOST

scp -o ControlPath=$SSH_SOCKET build/libs/app.jar $USER@$HOST:/home/vagrant/
scp -o ControlPath=$SSH_SOCKET -r deploy/ $USER@$HOST:/home/vagrant
ssh -o ControlPath=$SSH_SOCKET -t $USER@$HOST "deploy/install.sh"

ssh -S $SSH_SOCKET -O exit $USER@$HOST

