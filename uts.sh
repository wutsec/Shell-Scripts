#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x uts.sh
# Shell script containing misc. tools
sleep 0.5
echo ""
echo "Device/Network Utility Menu"
sleep 0.5
echo "(c) Devon M. 2025"
sleep 0.5
echo ""
echo "(1.) Ping"
echo "(2.) Port Scan"
echo "(3.) Disk Formatter"
echo "(4.) Install Toolkit"
echo "(5.) Extract Metadata"
echo "(10.) Exit"
echo ""

read -p "Select:" menu_input

if [ $menu_input = "1" ] ; then
	read -p "Target:" ping_tar
		exec ping -c 5 $ping_tar
elif [ $menu_input = "2" ] ; then
	read -p "Target:" nmap_tar
		exec nmap $nmap_tar
elif [ $menu_input = "3" ] ; then
	exec "/home/devon/Bash/formatter.sh"
elif [ $menu_input = "4" ] ; then
	exec "/home/devon/Bash/toolkit.sh"
elif [ $menu_input = "5" ] ; then
	exec "/home/devon/Bash/metdat.sh"
else [ $menu_input = "10" ]
    echo "Terminating script..."
    sleep 0.5
    exec "/home/devon/Bash/hud.sh"
fi
