#!/bin/bash

read -p  "Have you unlock your bootloader ? [y/n] : " loader
if [ $loader = n ]; then
	clear
	sudo ./bootloader.sh
fi
if [ $loader = y ]; then
	clear
	echo "--TWRP Menu--"
	echo ""
	echo "1 - Flash TWRP"
	echo "2 - Boot TWRP"
	echo "3 - Return menu"
	echo ""
	read -p "Enter the number : " twrp
fi

if [ $twrp = 1 ]; then
	clear
	echo "Go on bootloader and fastboot"
	echo ""
	read -p -s "Press any key when it's done"
	cd ..
	cd files
	fastboot flash recovery twrp.img 
	echo ""
	echo "|----------------------------------|"
	echo "| You have successful install TWRP |"
	echo "|----------------------------------|"
	echo ""
	echo ""
	echo "You can now boot into TWRP"
	echo ""
	read -p "Press any key to return to TWRP  Menu ..."
	cd ..
	cd scripts/
	sudo ./twrp
fi

if [ $twrp = 2 ]; then
	clear
	echo "Go on bootloader and fastboot if its not already done"
	fastboot boot twrp.img
	echo ""
	echo "|------------------------------------|"
	echo "| You have successful boot into TWRP |"
	echo "|------------------------------------|"
	echo ""
	read -p "Press any key to return Main Menu ..."
	cd ..
	cd scripts/
	sudo ./toolkit.sh 1
fi

if [ $twrp = 3 ]; then
	clear
	sudo ./toolkit.sh 1
fi
