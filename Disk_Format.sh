#! /bin/sh
# Disk Info
#sudo fdisk -l
#sudo fdisk -l /dev/sdX
# look for a disk of the correct size that has no associated partitions
#lsblk

sdX="/dev/sde"
sdX1="/dev/sde1"

# 1. Disk wipe
dd if=/dev/zero of=$sdX bs=1M status=progress
# 2. Create table
# gparted
# Device -> create partition table
#parted $sdX mklabel gpt
# 3. Create File System
#mkfs.ext4 $sdX1
# gparted
# Partition -> Format to -> ext4
# 4. Bad Sector
# using gparted select the “check” option
#e2fsck -cfpv $sdX1
# “c” searches for bad blocks and add it to a list
# “f” does a check on the file system
# “p” parameter repairs anything if possible 
# “v” is the verbose mode which gives you the terminal output of the command progress.
