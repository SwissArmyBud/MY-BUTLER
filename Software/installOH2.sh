#! /bin/bash

echo ""
echo ""
echo ""
echo "  -----########################-----"
echo "  -----### INSTALLING JAVA8 ###-----"
echo "  -----########################-----"
echo ""
sudo ./Install/installJava8.sh

echo ""
echo ""
echo ""
echo "  -----############################-----"
echo "  -----### INSTALLING MOSQUITTO ###-----"
echo "  -----############################-----"
echo ""
sudo ./Install/installMQTT.sh

echo ""
echo ""
echo ""
echo "  -----###########################-----"
echo "  -----### INSTALLING OPENHAB2 ###-----"
echo "  -----###########################-----"
echo ""
sudo ./Install/installOH2.sh
