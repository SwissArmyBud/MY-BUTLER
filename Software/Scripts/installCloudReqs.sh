#! /bin/bash

echo ""
echo ""
echo " --> UPDATING APT"
echo ""
sudo apt-get update
echo ""

echo ""
echo ""
echo " --> INSTALLING REQUIREMENTS"
echo ""
sudo apt-get install build-essential curl redis-server mongodb python git python-software-properties -y
echo ""




