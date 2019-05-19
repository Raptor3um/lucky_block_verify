#!/bin/bash
echo
read -p "QT Wallet and raptoreumd need to be killed to run this script, I will now kill it if running. Continue? Y/y (or cntrl-c to exit) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
pkill -f raptoreum
fi
sleep 5

echo

echo "Starting the raptoreum daemon, this will take a few minutes"
./raptoreumd --daemon
sleep 60

echo "Checking if you are owner of a lucky block address...."

echo

set -v
./raptoreum-cli validateaddress "RBEg8CV6cF2C4HMSm61V5VtvfPsjqCmtPZ" | grep ismine
./raptoreum-cli validateaddress "RLQg8cCn7XFq3QhGCisLyQfPuR6eQC1Jff" | grep ismine
./raptoreum-cli validateaddress "RLFvJKb6unLLe9YxbDYiS84t6xP5M7khP4" | grep ismine
./raptoreum-cli validateaddress "RJSXYBAdfL5AKG7Tp5omHQHfP3yM9y4SCq" | grep ismine
./raptoreum-cli validateaddress "RQXCvnpLrB8VLYzmioMvTMvUMWuYD9FXMR" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

set -v
./raptoreum-cli validateaddress "RJMMMcvDXAQSfKKKDMso4gYDK31ZCvYYDY" | grep ismine
./raptoreum-cli validateaddress "RHaiGEkzgeYr2toMo4jcFVRJQ9jwBPHZ1x" | grep ismine
./raptoreum-cli validateaddress "RXmbFjuRJBD6yoXfEBWFa5RT7k95f9dn2B" | grep ismine
./raptoreum-cli validateaddress "REHkt5AtQGNrp4n7TrG6c3gaRtvBxqRq7L" | grep ismine
./raptoreum-cli validateaddress "R9WL2sNXHmacxvCusZSDMgaiWJrYZJX5ts" | grep ismine
./raptoreum-cli validateaddress "RW5rvh1pgr3efXUaQzYnjyufWnY9VV7oyw" | grep ismine
./raptoreum-cli validateaddress "RBankZekxmn2xYi3qUdNZYMzKT7AE9XT2b" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
