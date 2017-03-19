#! /bin/bash

echo ""
echo ""
echo " --> CONFIGURING NODEJS INSTALL VERSION"
echo ""
sudo curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
echo ""

echo ""
echo ""
echo " --> INSTALLING NPM"
echo ""
sudo apt-get install npm -y
echo ""

echo ""
echo ""
echo " --> INSTALLING NODE"
echo ""
sudo apt-get install nodejs -y
echo ""
