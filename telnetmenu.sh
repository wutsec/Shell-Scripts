#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x telnetmenu.sh
# Shell script Telnet menu
sleep 0.5
echo ""
echo "Multi-Purpose Telnet Menu"
sleep 0.5
echo "(c) Devon M. 2026"
sleep 0.5
echo ""
echo "(1.) Telehack"
echo "(2.) Cisco 3850 PoE Switch"
echo "(5.) Exit"
echo ""

read -p "Select:" menu_input

if [ $menu_input = "1" ] ; then
	exec telnet telehack.com
elif [ $menu_input = "2" ] ; then
	exec telnet 192.168.1.100
else [ $menu_input = "5" ]
	echo "Terminating script..."
	sleep 0.5
	exec "/home/devon/Bash/hud.sh"
fi

