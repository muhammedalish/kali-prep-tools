#!/bin/bash

user=$2

#update package
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade


#install rdp & gui services
sudo apt-get install -y kali-desktop-xfce xorgxrdp xrdp
sudo systemctl enable xrdp --now

#adding a new user
sudo useradd -m $user
sudo chsh -s /bin/zsh $user
sudo passwd $user

