#! /bin/bash

echo ""
echo ""
echo ""
echo " -----##########################-----"
echo " -----### INSTALLING COHORTS ###-----"
echo " -----##########################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installCloudReqs.sh
echo ""

echo ""
echo ""
echo " -----#########################-----"
echo " -----### INSTALLING NODEJS ###-----"
echo " -----#########################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installNode.sh
echo ""

echo ""
echo ""
echo " -----################################-----"
echo " -----### INSTALLING OPENHAB CLOUD ###-----"
echo " -----################################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installOHCloud.sh
echo ""
