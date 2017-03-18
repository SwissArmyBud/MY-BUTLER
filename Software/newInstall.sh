#! /bin/bash

echo "  -----### INSTALLING JAVA8 ###-----"
echo ""
sudo ./installJava8.sh

echo "  -----### INSTALLING MOSQUITTO ###-----"
echo ""
sudo ./installMQTT.sh

echo "  -----### INSTALLING OPENHAB2 ###-----"
echo ""
sudo ./installOH2.sh
