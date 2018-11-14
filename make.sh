#!/bin/bash

# MAKEFILE for MLAS-Automator

# Covers dependencies for all scripts to run



# install deps
sudo apt-get install -y python3 python3-pip
echo Installing MLAS-Auto key deps.


# install python packages needed
sudo pip3 install selenium==3.14.1
sudo pip3 install pandas==0.23.4
sudo pip3 install pyyaml==3.13
echo Grabbing needed python packages for MLAS-Auto

# Create directories and grab the MLAS-Automator
echo Creating local MLAS-Auto environment

sudo mkdir /MLAS-Automator && sudo chown $USER:data /MLAS-Automator && cd /MLAS-Automator
git clone https://github.com/sean-boothby/MLAS-Automator.git
cd MLAS-Automator
sudo mkdir downloads
