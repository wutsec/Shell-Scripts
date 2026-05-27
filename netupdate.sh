#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x netupdate.sh
# Shell script to mass-update all in-network Linux machines
sleep 0.5
echo ""
echo "Network-Wide Linux Update"
sleep 0.5
echo "(c) Devon M. 2025"
sleep 0.5

# Prompt
echo ""
read -p "Would you like to continue? (y/n) " menu_input

case $menu_input in
	n ) echo "Terminating script..."; sleep 0.5; exec "/home/devon/Bash/hud.sh";;
	y ) echo "Executing mass update scripts...";;
	* ) echo "Invalid response"; sleep 0.5; exec "/home/devon/Bash/netupdate.sh";;
esac

# Update Local Device
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean

# Update Raspberry Pi 1
clear
echo "Updating Raspberry Pi 1"
sleep 0.5
ssh devon@192.168.1.5 "sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean"

#Update Dell Poweredge T310
clear
echo "Updating Dell Poweredge T310"
sleep 0.5
ssh devon@192.168.1.19 "sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean"

#Update Dell Poweredge R210
clear
echo "Updating Dell Poweredge R210"
sleep 0.5
ssh devon@192.168.1.21 "sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean"

exec "/home/devon/Bash/hud.sh"
