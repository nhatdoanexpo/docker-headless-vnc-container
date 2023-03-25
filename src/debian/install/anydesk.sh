#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Any desk to remote"
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - 
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk.list 
apt-get install -y anydesk
apt-get clean -y
