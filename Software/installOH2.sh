#! /bin/bash

echo ""
echo ""
echo ""
echo "  -----########################-----"
echo "  -----### INSTALLING JAVA8 ###-----"
echo "  -----########################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installJava8.sh

echo ""
echo ""
echo ""
echo "  -----############################-----"
echo "  -----### INSTALLING MOSQUITTO ###-----"
echo "  -----############################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installMQTT.sh

echo ""
echo ""
echo ""
echo "  -----###########################-----"
echo "  -----### INSTALLING OPENHAB2 ###-----"
echo "  -----###########################-----"
echo ""
sudo ~/MYBUTLER/Software/Install/installOH2.sh
