#! /bin/bash

echo ""
echo ""
echo ""
echo "  -----########################-----"
echo "  -----### INSTALLING JAVA8 ###-----"
echo "  -----########################-----"
echo ""
sudo ./Scripts/installJava8.sh

echo ""
echo ""
echo ""
echo "  -----############################-----"
echo "  -----### INSTALLING MOSQUITTO ###-----"
echo "  -----############################-----"
echo ""
sudo ./Scripts/installMQTT.sh

echo ""
echo ""
echo ""
echo "  -----###########################-----"
echo "  -----### INSTALLING OPENHAB2 ###-----"
echo "  -----###########################-----"
echo ""
sudo ./Scripts/installOH2.sh
