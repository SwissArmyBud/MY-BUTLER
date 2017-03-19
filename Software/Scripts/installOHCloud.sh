#! /bin/bash

echo ""
echo ""
echo " --> INSTALLING OPENHAB CLOUD"
echo ""
cd ~
sudo git clone https://github.com/openhab/openhab-cloud.git OHCloud
echo ""

echo ""
echo ""
echo " --> INSTALLING OPENHAB CLOUD"
echo ""
cd ./OHCloud
sudo npm install
echo ""

echo ""
echo ""
echo " --> CREATING INITIAL CONFIGURATION"
echo ""
sudo cp config-production.json config.json
echo ""
