#!/bin/bash

read -p "Have you install TWRP ? [y/n]" reco

if [ $reco = y ]; then
	clear
	echo "Go on bootloader and fastboot, then go to recovery"
	read -p "Press any key when it's done"
	adb push dm-verity-fix.zip /sdcard
	clear
	echo " Flash the .zip --> Go on INSTALL and search the dm-verity-fix.zip and flash it"
	read -p -s "Press any key when it's done"
	clear
	echo "|------------------------|"
	echo "| DM-verity is now fixed |"
	echo "|------------------------|"
	echo ""
	read -p "Press any key to return to Main Menu"
	clear
	sudo ./toolkit 1
fi

if [ $reco = n ]; then
	sudo ./twrp.sh
fi
