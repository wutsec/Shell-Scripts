#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x netupdate.sh
# Shell script to mass-update all in-network Linux machines
sleep 0.5
echo ""
echo "Network-Wide Linux Update"
sleep 0.5
echo "(c) Devon M. 2025"
sleep 0.5
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean
ssh devon@192.168.1.5 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean'
ssh devon@192.168.1.42 'sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean'

exec "/home/devon/Bash/hud.sh"