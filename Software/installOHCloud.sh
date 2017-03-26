#! /bin/bash

# GO HOME
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
cd $USER_HOME

# INSTALL ALL SUPPORTING SOFTWARE
echo ""
echo ""
echo ""
echo " -----###############################-----"
echo " -----### INSTALLING REQUIREMENTS ###-----"
echo " -----###############################-----"
echo ""
source ./MYBUTLER/Software/Install/installOHCloudReqs.sh
echo ""

# INSTALL OpenHAB Cloud
echo ""
echo ""
echo ""
echo " -----################################-----"
echo " -----### INSTALLING OPENHAB CLOUD ###-----"
echo " -----################################-----"
echo ""
source ./MYBUTLER/Software/Install/installOHCloud.sh
echo ""
