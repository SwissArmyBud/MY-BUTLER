
echo ""
echo ""
echo " --> ADDING JAVA 8 SCRIPT REPOSITORY"
echo ""
sudo add-apt-repository ppa:webupd8team/java -y
echo ""

echo ""
echo ""
echo " --> UPDATING APT"
echo ""
sudo apt-get update
echo ""

echo ""
echo ""
echo " --> INSTALLING JAVA 8"
echo ""
sudo apt-get install oracle-java8-installer -y
echo ""

echo ""
echo ""
echo " --> CONFIGURING JAVA 8"
echo ""
sudo apt-get install oracle-java8-set-default -y
echo ""
