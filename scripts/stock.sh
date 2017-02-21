#!/bin/bash 

echo "-------Stock Menu-------"
echo ""
echo "1 - Flash stock recovery"
echo "2 - Boot stock recovery"
echo "3 - Return menu"
echo ""
read -p "Enter the number : " stock

if [ $stock = 1 ]; then
	clear
	echo "Go on bootloader and fastboot"
	echo ""
	read -p -s "Press any key when it's done"
	cd ..
	cd files
	fastboot flash recovery stock.img
	echo "|------------------------------------------|"
	echo "| You have successful flash stock recovery |"
	echo "|------------------------------------------|"
	echo "You can now boot on recovery"


	read -p "Press any key to return Stock Menu ..."
	cd ..
	cd scripts
	sudo ./stock.sh
fi

if [ $stock = 2 ]; then
	clear
	adb reboot-bootloader
	cd ..
	cd files
	fastboot boot stock.img
	cd ..
	cd scripts
	sudo ./toolkit.sh 1
fi

if [ $stock = 3 ]; then
	clear
	sudo ./toolkit.sh 1
fi
