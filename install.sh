#!/bin/bash

echo "Installing sspari bluetooth Dependencies"
sudo apt-get update
git clone https://github.com/bareinhard/super-simple-raspberry-pi-audio-receiver-install
cd super-simple-raspberry-pi-audio-receiver-install
git checkout volumio-plugin
user=`ls /home | tail -1`
source ./functions.sh
source ./dependencies.sh
log "Installing SSPARI Plugin"
sudo ./install.sh 4 "$user Bluetooth"
# Install the required packages via apt-get

# If you need to differentiate install for armhf and i386 you can get the variable like this
#DPKG_ARCH=`dpkg --print-architecture`
# Then use it to differentiate your install

#requred to end the plugin install
echo "plugininstallend"
