#! /bin/bash

echo ""
echo ""
echo ""
echo "  -----########################-----"
echo "  -----### INSTALLING JAVA8 ###-----"
echo "  -----########################-----"
echo ""
sudo ./installJava8.sh

echo ""
echo ""
echo ""
echo "  -----############################-----"
echo "  -----### INSTALLING MOSQUITTO ###-----"
echo "  -----############################-----"
echo ""
sudo ./installMQTT.sh

echo ""
echo ""
echo ""
echo "  -----###########################-----"
echo "  -----### INSTALLING OPENHAB2 ###-----"
echo "  -----###########################-----"
echo ""
sudo ./installOH2.sh
