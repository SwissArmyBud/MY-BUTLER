#! /bin/bash

# REDIS-SERVER VERSION CONFIGURATION
echo ""
echo ""
echo "  --> *CONFIGURING REDIS-SERVER INSTALL VERSION*"
echo ""
sudo add-apt-repository ppa:chris-lea/redis-server
echo ""

# NODE JS VERSION CONFIGURATION
echo ""
echo ""
echo "  --> *CONFIGURING NODEJS INSTALL VERSION*"
echo ""
sudo curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
echo ""

# UPDATE APT WITH NEW REPOSITORY PACKAGES
echo ""
echo ""
echo "  --> *UPDATING APT*"
echo ""
sudo apt-get update
echo ""

# INSTALL REQUIREMENTS
echo ""
echo ""
echo "  --> *INSTALLING REQUIREMENTS*"
echo ""
sudo apt-get install build-essential curl redis-server mongodb python git python-software-properties npm nodejs -y
echo ""