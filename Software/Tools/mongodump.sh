#! /bin/sh

cd ~/OHCloud

mongodump

for f in ./dump/openhab/*bson
	do bsondump "$f" > "$f.json"
done

cat ./dump/openhab/emailVerifications.bson.json

echo ""
echo "To activate, follow link format below and submit from browser:"
echo "http<s>://<IP/DNS>/verify?code=<CODE>"