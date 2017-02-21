#!/bin/bash
echo "----Check Menu----"
echo ""
echo "1 - ADB check"
echo "2 - Fastboot check"
echo "3 - Return menu"
echo ""
read -p "Enter the number : " ck

if [ $ck = 1 ];then
	clear
	adb kill-server
	adb start-server
	adb devices
	echo ""
	read -p "Press any key to return check menu ..."
	clear
	sudo ./check.sh
fi

if [ $ck = 2 ]; then
	clear
	adb reboot-bootloader &>/dev/null
	sleep 10
	fastboot devices
	fastboot reboot
	read -p "Press any key to return check Menu ..."
	clear
	sudo ./check.sh
fi

if [ $ck = 3 ]; then
	clear
	sudo ./toolkit.sh 1
fi
