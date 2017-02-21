#!/bin/bash

read -p "Have you installed the TWRP recovery ? [y/n] : " reco

if [ $reco = n ]; then
	clear
	sudo ./twrp.sh
fi

if [ $reco = y ]; then
	clear
	cd ..
	cd files
	echo "Go to bootloader and fastboot, then go to recovery"
	echo ""
	read -p -s "Press any key when you have done it"
	adb push supersu.zip /sdcard
	clear
	echo "Now go on INSTALL and flash manually SuperSU"
	echo ""
	echo ""
	echo "When the installation is finished, restart the sytem"
	echo ""
	echo ""
	read -p "Press any key when you have done it"
	clear
	echo "|--------------------------------------|"
	echo "| You have successful root your device |"
	echo "|--------------------------------------|"
	cd ..
	cd scripts
	clear
	sudo ./toolkit.sh 1
fi




