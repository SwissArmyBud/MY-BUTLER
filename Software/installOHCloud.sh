#!/usr/bin/env bash

# INSTALL ALL SUPPORTING SOFTWARE
echo ""
echo ""
echo ""
echo " -----###############################-----"
echo " -----### INSTALLING REQUIREMENTS ###-----"
echo " -----###############################-----"
echo ""
sudo source ~/MYBUTLER/Software/Install/installOHCloudReqs.sh
echo ""

# INSTALL OpenHAB Cloud
echo ""
echo ""
echo ""
echo " -----################################-----"
echo " -----### INSTALLING OPENHAB CLOUD ###-----"
echo " -----################################-----"
echo ""
sudo source ~/MYBUTLER/Software/Install/installOHCloud.sh
echo ""
