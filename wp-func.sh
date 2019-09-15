#!/bin/bash

# Checks if file exists

FILE="/usr/bin/wget"

# Function defintion - start
wpInstall () {
# need a seperate function for this because the if and if is ending the script without running wget if wget needs to be installed
if [ -f "$FILE" ];
then
  echo `wget https://wordpress.org/latest.tar.gz`
else
  echo "wget not installed"
  read -p "Would you like to install wget? y/N: " wgetinstall
# checks if user wants to install wget
#  if [ "$wgetinstall" == "y" ];
 #   then
  #    echo `sudo apt install wget -y`
   # else
    # echo "not install wget"
 # fi
fi
}

# User input for install

read -p "Install y/N" ans

if [ "$ans" == "y" ];
then
  echo "Installing..."
  wpInstall
else
  echo "Cancelled"
fi
