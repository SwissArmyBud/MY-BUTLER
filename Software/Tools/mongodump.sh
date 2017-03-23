#! /bin/sh

cd ~/OHCloud

mongodump

for f in ./dump/openhab/*bson
	do bsondump "$f" > "$f.json"
done

cat ./dump/openhab/emailVerifications.bson.json