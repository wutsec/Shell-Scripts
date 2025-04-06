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
echo "(5.) Main Menu"
echo "(10.) Exit"
echo ""

read -p "Select:" menu_input

if [ $menu_input = "1" ] ; then
   read -p "Target:" ping_tar
   exec ping -c 5 $ping_tar
elif [ $menu_input = "2" ] ; then
   read -p "Target:" nmap_tar
   exec nmap $nmap_tar
elif [ $menu_input = "5" ] ; then
   exec "/home/devon/Bash/hud.sh"
else [ $menu_input = "10" ]
    echo "Terminating script..."
    sleep 0.5
    exit 1
    exec "/home/devon/Bash/uts.sh"
fi
