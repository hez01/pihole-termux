#!/bin/bash
pkg update
pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh
su
export PATH=$PATH:/data/data/com.termux/files/usr/bin/
./start-debian.sh
apt update
wget https://raw.githubusercontent.com/hez01/pihole-termux/main/install.sh
chmod u+x install.sh
./install.sh;
./install.sh
