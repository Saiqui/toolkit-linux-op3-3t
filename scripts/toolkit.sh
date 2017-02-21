#!/bin/bash

clear
if [ -z $1 ]; then

echo -e "\033[1m\033[41mOnePlus 3/3T toolkit for OOS 4 and higher\033[0m"
echo ""
echo ""
echo ""
echo "********"
echo -e  "* \033[31m\033[1mNeed\033[0m *"
echo "********"
echo ""
echo ""
echo -e "\033[41m-->\033[0m Enable Developer options (tap 7 times on build number in" 
echo "    Settings > About Phone)"
echo ""
echo -e "\033[41m-->\033[0m Enable USB Debugging (on Developer options)"
echo ""
echo -e "\033[41m-->\033[0m Enable Oem unlock (on Developer options)"
echo ""
echo ""
echo ""
echo -e "\033[31m\033[1m "
read -s -p "Press any key to continue ..."
echo -e "\033[0m "
clear
echo "------------ Main Menu-----------"
echo ""
echo "1 - Install ADB and Fastboot"
echo "2 - Unlock & Lock bootloader"
echo "3 - Check ADB and Fastboot status"
echo "4 - Flash & Boot TWRP"
echo "5 - Flash & Boot Stock recovery"
echo "6 - Fix DM-verity"
echo "7 - Root with SuperSU"
echo ""
echo "8 - Exit"
echo ""
echo ""
echo ""
fi

if [ $1 ]; then
clear
echo "------------ Main Menu-----------"
echo ""
echo "1 - Install ADB and Fastboot"
echo "2 - Unlock & Lock bootloader"
echo "3 - Check ADB and Fastboot status"
echo "4 - Flash & Boot TWRP"
echo "5 - Flash & Boot Stock recovery"
echo "6 - Root with SuperSU"
echo ""
echo "7 - Exit"
echo ""
echo ""
echo ""
fi
read -p "Enter the number : " opt

if [ $opt = 1 ]; then 
	clear
	sudo ./adb_fastboot.sh
fi

if [ $opt = 2 ]; then
	clear
	sudo ./bootloader.sh
fi

if [ $opt = 3 ]; then
	clear
	sudo ./check.sh
fi

if [ $opt = 4 ]; then
	clear
	sudo ./twrp.sh
fi

if [ $opt = 5 ]; then
	clear
	sudo ./stock.sh
fi

if [ $opt = 6 ]; then
	clear
	sudo ./dm.sh
fi

if [ $opt = 7 ]; then
	clear
	sudo ./root.sh
fi

if [ $opt = 8 ]; then 
	clear
	exit
fi
