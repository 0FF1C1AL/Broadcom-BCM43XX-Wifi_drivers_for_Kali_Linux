#! /bin/bash

echo "Hey don't worry, I'm gonna install the necessary stuff needed to get your wifi up and working!";

echo " ";

echo "This script is for Broadcom BCM43XX wifi drivers, here's your wifi driver:";

echo " ";

echo $(lspci -vnn | grep BCM43);

echo " ";

echo "Going to update";

sudo apt update ;

echo " ";

echo $(sudo apt-get install linux-headers-$(uname -r | sed ‘s,[^-]*-[^-]*-,,’) broadcom-sta-dkms);

echo " ";

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac;

echo " ";

sudo modprobe wl;

echo "Your wifi should be working now. If it did not work please try restarting your device. If it still doesn't work, I'm sorry.";
