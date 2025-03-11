#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x sshmenu.sh
# Shell script SSH menu for local Linux machines
sleep 0.5
echo ""
echo "Linux Device SSH Menu"
sleep 0.5
echo "(c) Devon M. 2025"
sleep 0.5
echo ""
echo "(1.) Raspberry Pi"
echo "(2.) PowerEdge T310"
echo "(5.) Exit"
echo ""

read -p "Select:" menu_input

if [ $menu_input = "1" ] ; then
    exec ssh devon@192.168.1.5
elif [ $menu_input = "2" ] ; then
    exec ssh devon@192.168.1.1
elif [ $menu_input = "5" ]; then
    echo "Terminating script..."
    sleep 0.5
    exit 1
else
    exec "/home/devon/Bash/sshmenu.sh"
fi