#! /bin/bash

echo ""
echo ""
echo ""
echo " -----##########################-----"
echo " -----### INSTALLING COHORTS ###-----"
echo " -----##########################-----"
echo ""
sudo ./Install/installCloudReqs.sh
echo ""

echo ""
echo ""
echo " -----#########################-----"
echo " -----### INSTALLING NODEJS ###-----"
echo " -----#########################-----"
echo ""
sudo ./Install/installNode.sh
echo ""

echo ""
echo ""
echo " -----################################-----"
echo " -----### INSTALLING OPENHAB CLOUD ###-----"
echo " -----################################-----"
echo ""
sudo ./Install/installOHCloud.sh
echo ""
