#!/bin/bash
site=$1
# MAKEFILE for MLAS-Automator

# Covers dependencies for all scripts to run



# install deps
sudo apt-get install -y python3 python3-pip libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
echo Installing selenium ubuntu key deps


# install python packages needed
sudo pip3 install selenium==3.14.1
sudo pip3 install pandas==0.23.4
sudo pip3 install pyyaml==3.13
echo Grabbing needed python packages - selenium and a few others

# Create directories and grab the MLAS-Automator
echo Creating local environment for your selenium script


if [[ $site =~ MLAS ]];
then
	sudo mkdir /MLAS-Automator && sudo chown $USER:data /MLAS-Automator && cd /MLAS-Automator
	git clone $site
	cd MLAS-Automator
	sudo mkdir downloads
	chmod +x driver/chromedriver
else
	sudo mkdir /blmAuto && sudo chown $USER:data /blmAuto && cd /blmAuto
	git clone $site
	cd blmauto*
	sudo mkdir downloads
	chmod +x driver/chromedriver
fi


