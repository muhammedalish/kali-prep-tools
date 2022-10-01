#!/bin/bash

#preparing for installing tools
mkdir setup && cd setup

#download & install Rustscan
echo "Downloading Rustscan"
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
echo "Installing Rustscan"
dpkg -i rustscan_2.0.1_amd64.deb
#removing files 
rm rustscan_2.0.1_amd64.deb
