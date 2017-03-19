#! /bin/bash

echo ""
echo ""
echo " --> CONFIGURING NODE INSTALL OPTIONS"
echo ""
sudo curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
echo ""

echo ""
echo ""
echo " --> INSTALLING NODEJS"
echo ""
sudo apt-get install npm -y
sudo apt-get install nodejs -y
echo ""
