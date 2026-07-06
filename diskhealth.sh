#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x diskhealth.sh
# Disk health utility
sleep 0.5
echo ''
echo 'Disk Health/Attribute Utility'
sleep 0.5
echo '(c) Devon M. 2026'
sleep 0.5

# Display Mounted Disks Prompt
echo ''
read -p 'Display mounted disks? (y/n) ' m_disks

case $m_disks in
	y ) 'lsblk';; #Lack of exec prefix allows script to continue, rather than terminating
	n ) ;;
	* ) echo 'Invalid response'; exec '/home/devon/Bash/diskhealth.sh';;
esac

# Disk Selection
echo ''
read -p 'Input disk: ' disk_name

# Smartmon Execution
exec sudo smartctl -a /dev/$disk_name
