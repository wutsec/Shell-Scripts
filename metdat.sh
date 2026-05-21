#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x metdat.sh
# Image metadata extraction utility
sleep 0.5
echo ''
echo 'Metadata Extraction Utility'
sleep 0.5
echo '(c) Devon M. 2026'
sleep 0.5

# File Selection
echo ''
read -p 'Input filepath: ' file_name

# Output Type Selection
echo ''
echo 'Select Output Type'
echo ''
echo '(1.) Standard Output'
echo '(2.) Exit'
echo ''
read -p '' output_type

case $output_type in
	1 ) echo ''; exec exiftool $file_name; sleep 0.5; exec '/home/devon/Bash/metdat.sh';;
	2 ) echo ''; echo 'Terminating Script...'; sleep 0.5; exec '/home/devon/Bash/hud.sh';;
	* ) echo ''; echo 'Invalid selection'; sleep 0.5; exec '/home/devon/Bash/metdat.sh';;
esac
