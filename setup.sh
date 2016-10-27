#!/bin/bash

# Use the first argument to this script to set our hostname
if [ -z $1 ]; then
   echo "Please provide a new hostname as the first argument to this script."
   exit
fi
OLD_HOSTNAME=$(hostname)
echo $1 > /etc/hostname
sed -i "s/$OLD_HOSTNAME/$1/g" /etc/hosts

# Download and install proto-mesh
cd /home/pi
git clone https://github.com/aiguy1010/proto-mesh.git
cd proto-mesh
bash ./setup.sh

# Download GoPiGo stuff
git clone https://github.com/DexterInd/GoPiGo
