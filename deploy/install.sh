#!/bin/bash

source deploy/app-constants.sh

APP_JAR="/home/vagrant/${APP_NAME}.jar"
APP_LIB_DIR="${APP_LOCATION}/lib"

echo "Create app folder"
sudo mkdir -p $APP_LOCATION

echo "Installing service script..."
sudo cp /vagrant/deploy/init.d/app /etc/init.d/
sudo mkdir -p $APP_LIB_DIR
sudo cp deploy/app-constants.sh $APP_LIB_DIR/

sudo service app stop

echo "Installing app..."
if [ -f $APP_JAR ]; then
  sudo cp $APP_JAR $APP_LOCATION
else
  echo "${APP_JAR} not found. Build it!"
  return 1
fi

sleep 5
sudo service app start

