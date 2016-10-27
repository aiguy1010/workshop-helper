#!/bin/bash

# Use the first argument to this script to set our hostname
if [ -z $1 ]; then
   echo "Please provide a new hostname as the first argument to this script."
   exit
fi
OLD_HOSTNAME=$(hostname)
echo $1 > /etc/hostname
sed -i "s/$OLD_HOSTNAME/$1/g" /etc/hosts


# curl -s http://pastebin.com/raw/pwdHJjYP | bash /dev/stdin <hostname>
