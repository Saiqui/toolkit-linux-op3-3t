#!/bin/bash
clear
echo "-----Bootloader Menu-----"
echo ""
echo "1 - Unlock the bootloader"
echo "2 - Lock the bootloader"
echo "3 - Return Menu"
echo ""
echo -e "\033[31m\033[1m\033[4m\033[7mModify Bootloader will wipe all your Data !!\033[0m"
echo -e "\033[31m\033[1m\033[4m\033[7mMake sure you have Backup Data\033[0m"
echo ""
read -p "Enter the number : " boot
if [ $boot = 1 ]; then
	clear
	adb kill-server
	adb restart-server
	adb reboot-bootloader &>/dev/null
	fastboot oem unlock
	echo ""
	echo "On your phone, accept the unlocking with the volume and power key"
	echo ""
	read -p "Press any key when it's done"
	clear
	echo "|---------------------------------------|"
	echo "| You have succesfull unlock bootloader |"
	echo "|---------------------------------------|" 
	echo ""
	echo "You just have to wait the end of settings and reactivate USB debuging"

	read -p "Press any key to return to Main Menu ..."
	clear
	sudo ./toolkit.sh 1
fi
if [ $boot = 2 ]; then
	clear
	adb kill-server
	adb start-server
	adb reboot-bootloader &>/dev/null
	fastboot oem lock
	echo "|-------------------------------------|"
        echo "| You have succesfull lock bootloader |" 
        echo "|-------------------------------------|" 
        echo ""
	read -p "Press any key to return to Main Menu ..."
	clear
	sudo ./toolkit.sh 1
fi

if [ $boot = 3 ]; then
	clear
	sudo ./toolkit.sh 1
fi
