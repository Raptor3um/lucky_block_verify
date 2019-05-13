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
./raptoreum-cli validateaddress "RTDhddSmxjqzHtdoTrPHmZS5NB9h12w1WH" | grep ismine
./raptoreum-cli validateaddress "RBHcZF8UwHjRwwSmKfYPKtbmcNeFQAy9Yw" | grep ismine
./raptoreum-cli validateaddress "RJbShmxU79x7tTciJTNwU6rgQfZqwneXH7" | grep ismine
./raptoreum-cli validateaddress "RBJS8VPAoi4kw8r56dqN8uvov7PF7V94nz" | grep ismine
./raptoreum-cli validateaddress "RHnXvpkbpRwykThtRopUuE7ZVcoMbBSiuT" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU Send a random amount of RTM to address "RL4cHa6DJUKL2cfkakoBvBfRZLVbTx9QF9". Then DM Charlie on Discord the amount sent and the address."

exit 0
