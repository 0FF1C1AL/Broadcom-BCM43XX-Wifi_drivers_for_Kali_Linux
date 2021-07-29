#! /bin/bash

echo "Hello fellow mortal human being. Do not worry, as I shall install the necessary stuff needed to get your wifi up and working.";

echo " ";

echo "This script is for Broadcom BCM43XX wifi drivers, here's your wifi driver:";

echo " ";

echo $(lspci -vnn | grep BCM43);

echo " ";

echo "I shall update your Kali-Linux.";

sudo apt update ;

echo " ";

sudo apt-get install linux-headers-$(uname -r | sed ‘s,[^-]*-[^-]*-,,’) broadcom-sta-dkms;

echo " ";

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac;

echo " ";

sudo modprobe wl;

echo "Your wifi shall be working now. If it did not work, thou shall try restarting your device. If it still does not work, the heavens have not granted thou access to Wifi.";
