#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x hud.sh
# Shell script library launcher
clear
sleep 0.5

cat << "EOF"
                      ______
                   .-"      "-.
                  /            \
                 |              |
                 |,  .-.  .-.  ,|
                 | )(_o/  \o_)( |
                 |/     /\     \|
       (@_       (_     ^^     _)
  _     ) \_______\__|IIIIII|__/__________________________
 (_)@8@8{}<________|-\IIIIII/-|___________________________>
        )_/        \          /
       (@           `--------`
EOF
sleep 0.5
echo ""
echo "                (c) Devon M. 2025"
echo "                ------------------"
echo ""
sleep 0.5

echo "(1.) Update Devices"
echo "(2.) SSH Menu"
echo "(3.) FTP Menu"
echo "(4.) Upcoming"
echo "(5.) Upcoming"
echo "(9.) Utilities"
echo "(10.) Exit"
echo ""

read -p "Select:" menu_input

if [ $menu_input = "1" ] ; then
    exec "/home/devon/Bash/netupdate.sh"
elif [ $menu_input = "2" ] ; then
    exec "/home/devon/Bash/sshmenu.sh"
elif [ $menu_input = "3" ] ; then
    exec "/home/devon/Bash/ftpmenu.sh"
elif [ $menu_input = "9" ] ; then
    exec "/home/devon/Bash/uts.sh"
elif [ $menu_input = "10" ] ; then
    echo "Terminating script..."
    sleep 0.5
    exit 1
else
    exec "/home/devon/Bash/hud.sh"
fi