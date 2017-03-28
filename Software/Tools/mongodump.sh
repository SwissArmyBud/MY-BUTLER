#! /bin/sh

# GO HOME
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
cd $USER_HOME

# GO TO OHCloud INSTALLATION
cd ./OHCloud

mongodump

for f in ./dump/openhab/*bson
	do bsondump "$f" > "$f.json"
done

cat ./dump/openhab/emailVerifications.bson.json

echo ""
echo "To activate, follow link format below and submit from HTML browser:"
echo "http<s>://<IP/DNS>/verify?code=<CODE>"