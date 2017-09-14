#!/bin/bash
# Download dragonboard 410c debian image, wipe given sd card, install image
# AUTHOR: Kyle Suero (KST123ABC)

curl -LOk 512M http://builds.96boards.org/releases/dragonboard410c/linaro/debian/latest/dragonboard410c_sdcard_developer_debian-260.zip
echo "Type the path of the micro sd card you want to install the OS to (run lsblk to find sd card. ex: /dev/sdb), followed by [ENTER]: "

unzip dragonboard410c_sdcard_developer_debian-260.zip
cd dragonboard410c_sdcard_install_260
sudo dd if= db410c_sd_install_*.img of=$card bs=4M oflag=sync status=noxfer
echo "Set S6 switch on DragonBoard 410c to 0-1-0-0. SD Boot Switch should be set to ON. See 1.1 Board Overview page 7 for more assistance with S6 http://linaro.co/96b-hwm-db"
