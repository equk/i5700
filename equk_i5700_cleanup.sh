#!/system/bin/sh
# Samsung Galaxy Spica i5700 Cleanup Script
#
# Push this to device using adb and run using adb shell, terminal emulator or busybox
# This script is made for a clean ROM install, once run it is worth clearing app caches
#
# Removes: 	Mail App (I use gmail)
#			Google Maps (never used but it annoyingly spawns processes in the background)
#			Miui Music Player (unused so removed to free space)
#			Android Term (possible security risk on rooted devices)
#
#
# Notes: 	After running the script there should be more space on the device and idle around 80MB RAM free
# 			80MB doesn't seem much but with only 164MB of usable RAM on the device, it is a lot
#
# 				** run this using busybox **
#
# www.equk.co.uk

# Colors
blue="\033[1;34m"
green="\033[1;32m"
red="\033[1;31m"
bold="\033[1;37m"
reset="\033[0m"

# Perform Clean
echo $green i5700 cleanup script - equk.co.uk
echo =================================
echo .
echo mounting /system rw
busybox mount -o rw,remount /dev/stl6 /system
echo removing samsung stock apps ...
rm -r /system/app/Gallery.apk
rm -r /system/app/wssyncmlnps.apk
rm -r /system/app/MyFiles.apk
rm -r /system/app/Pantheon.apk
rm -r /system/app/BluetoothIcon.apk
rm -r /system/app/WifiIcon.apk
rm -r /system/app/MySpace1.7.apk
rm -r /system/app/Layar304-final-market.apk
rm -r /system/app/Facebook1.1.2.apk
echo removing unwanted apps ...
rm -r /system/app/Email.apk
rm -r /system/app/Maps.apk
rm -r /system/app/MiuiMusic.apk
rm -r /system/app/AndroidTerm.apk
echo $reset all done ... please reboot device
