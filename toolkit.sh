#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x toolkit.sh
# Shell script for installing all prerequisite tools/packages
sleep 0.5
echo ''
echo 'Toolkit Installation Utility'
sleep 0.5
echo '(c) Devon M. 2026'
sleep 0.5
echo ''
echo 'The following packages will be installed:'
echo ''
echo '- Nmap'
echo '- Hydra'
echo '- ExifTool'
echo ''

read -p 'Install prerequisite packages? (y/n) ' u_prompt

case $u_prompt in
	y ) sudo apt update; sudo apt upgrade; sudo apt install nmap -y; sudo apt install hydra; sudo apt install libimage-exiftool-perl -y;;
	n ) exec '/home/devon/Bash/hud.sh';;
	* ) echo 'Invalid Response';sleep 0.5; exec '/home/devon/Bash/toolkit.sh';;
esac
