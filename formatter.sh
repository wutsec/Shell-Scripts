#!/bin/bash
# To make executable, modify permissions of the script with: chmod u+x formatter.sh
# Disk formatting utility
sleep 0.5
echo ""
echo "Disk Formatting Utility"
sleep 0.5
echo "(c) Devon M. 2026"
sleep 0.5

# Display Mounted Disks Prompt
echo ""
read -p "Display mounted disks? (y/n) " m_disks

case $m_disks in
	y ) "df";; # Lack of exec prefix allows script to continue, rather than terminating
	n ) ;;
	* ) echo "Invalid response"; exec "/home/devon/Bash/formatter.sh";;
esac

# Disk Selection
echo ""
read -p "Input disk: " disk_name

# Optional Unmount
echo ""
read -p "Would you like to unmount the drive? (y/n) " u_mount

case $u_mount in
	y ) "sudo umount" $disk_name
	n ) ;;
	* ) echo "Invalid response"; exec "/home/devon/Bash/formatter.sh";;
esac

#Format Type Selection
echo ""
echo "Select format type:"
echo ""
echo "(1.) FAT32"
echo "(2.) NTFS"
echo "(3.) exFAT"
echo ""
read -p "" format_type

case $format_type in
	1 ) echo ""; exec sudo mkfs.vfat -Q $disk_name;;
	2 ) echo ""; exec sudo mkfs.ntfs -Q $disk_name;;
	3 ) echo ""; exec sudo mkfs.exfat -Q $disk_name;;
	* ) echo ""; echo "Invalid selection"; sleep 0.5; exec "/home/devon/Bash/formatte
