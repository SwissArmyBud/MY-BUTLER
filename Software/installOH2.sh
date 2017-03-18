#! /bin/bash

sudo adduser --system --no-create-home --group --disabled-login openhab

cd /tmp
wget -O openhab-download.zip https://bintray.com/openhab/mvn/download_file?file_path=org%2Fopenhab%2Fdistro%2Fopenhab%2F2.0.0%2Fopenhab-2.0.0.zip
sudo unzip openhab-download.zip -d /opt/openhab2
rm openhab-download.zip

sudo chown -hR openhab:openhab /opt/openhab2
