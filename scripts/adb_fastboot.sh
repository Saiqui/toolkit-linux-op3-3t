#!/bin/bash

apt-get update
apt install android-tools-adb android-tools-fastboot
clear
echo "|------------------------------------|"
echo "| ADB and Fastboot are now installed |"
echo "|------------------------------------|"
echo ""
echo ""
read -p "Press any key to return menu ..."
sudo ./toolkit.sh 1
