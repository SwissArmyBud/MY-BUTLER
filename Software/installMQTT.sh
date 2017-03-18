#! /bin/bash

echo ""
echo ""
echo " --> ADDING MOSQUITTO REPOSITORY"
echo ""
sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa -y
echo ""

echo ""
echo ""
echo " --> UPDATING APT"
echo ""
sudo apt-get update
echo ""

echo ""
echo ""
echo " --> INSTALLING MOSQUITTO PACKAGES"
echo ""
sudo apt-get install mosquitto libmosquitto-dev mosquitto-clients -y
echo ""
