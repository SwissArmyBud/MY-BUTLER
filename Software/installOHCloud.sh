#! /bin/bash

echo ""
echo ""
echo ""
echo " -----##########################-----"
echo " -----### INSTALLING COHORTS ###-----"
echo " -----##########################-----"
echo ""
sudo ./Scripts/installCloudReqs.sh
echo ""

echo ""
echo ""
echo " -----#########################-----"
echo " -----### INSTALLING NODEJS ###-----"
echo " -----#########################-----"
echo ""
sudo ./Scripts/installNode.sh
echo ""

echo ""
echo ""
echo " -----################################-----"
echo " -----### INSTALLING OPENHAB CLOUD ###-----"
echo " -----################################-----"
echo ""
sudo ./Scripts/installOHCloud.sh
echo ""
