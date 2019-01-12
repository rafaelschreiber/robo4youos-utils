#!/usr/bin/env bash
echo "Resizing partition..."
fdisk -uc /dev/mmcblk0 << EEOF > /dev/null 2>&1
d
2
n
p
2


n
w
EEOF
echo "Resized partitions."
echo "Resizing filesystem, this can take a while, please stand by..."
resize2fs /dev/mmcblk0p2 > /dev/null 2>&1
echo "Resized filesystem."
echo "All Done."
echo "You can cancel the following reboot with CTRL+C"
sleep 1
echo "Reboot in 3..."
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "0"
echo "Reboot"
reboot
