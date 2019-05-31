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
./raptoreum-cli validateaddress "RTmGDSqANSUgqBUSDMZg7TxqFUUkNnBAYw" | grep ismine
./raptoreum-cli validateaddress "RTRKv7i9S1J3YoNsvTWecFbz28uB9oSzGy" | grep ismine
./raptoreum-cli validateaddress "RDV6aR79oKGmRZDgnd3cuFoSFhd8vRFZxD" | grep ismine
./raptoreum-cli validateaddress "RSHe1fhXVpPCjWyPRDdoEoKmSeCXn6q4ic" | grep ismine
./raptoreum-cli validateaddress "RWiJac25iVn55U49KgLGQzqWPR7hi6p7Gh" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

set -v
./raptoreum-cli validateaddress "RLQCERL3rqT3vCkeHykbggxeUG7wHctzFZ" | grep ismine
./raptoreum-cli validateaddress "RWtAGoZivNfiu7DFM3hEiDFtxH7rtNA2he" | grep ismine
./raptoreum-cli validateaddress "RL2nNwbTFRcvqrU1WY1byzgDxaavcCb1Qv" | grep ismine
./raptoreum-cli validateaddress "RK8DzYusPGAkwvAR1xM4yrdxaDbq5mEFzk" | grep ismine
./raptoreum-cli validateaddress "RRJANjVnLFnyAFuW63vR7vHYTpHEszHYWM" | grep ismine
./raptoreum-cli validateaddress "RJUuwqvoNvwnfM8agkfkEFvkKFfSsszRon" | grep ismine
./raptoreum-cli validateaddress "RSJjuRhGSaJJpVFMsXypd3xkHNTFQxoCz9" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
