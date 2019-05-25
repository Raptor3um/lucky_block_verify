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
./raptoreum-cli validateaddress "RXgZf7kWEukvxXBjd3tVyGazBhGhyrw954" | grep ismine
./raptoreum-cli validateaddress "RNDbDy3MGMLgFNrVdNVSUZWhtpJKh1rr28" | grep ismine
./raptoreum-cli validateaddress "RUxDDAm5KcoNP3bTLadSVByW7GhqeaiZkN" | grep ismine
./raptoreum-cli validateaddress "RUbZv8ymHyBfLZYxtAKasUqBFNMPb4EVfA" | grep ismine
./raptoreum-cli validateaddress "RTVrNXQN6toSTMkCkwqwxtNNY5sdqhMksC" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

set -v
./raptoreum-cli validateaddress "RWoCCNsKPEUaUERsvtQotjTJpa6Jt8mryg" | grep ismine
./raptoreum-cli validateaddress "RXbs5EGjyQ5VNKApjWRBNUDg1HQGwvg4kX" | grep ismine
./raptoreum-cli validateaddress "RVXh7msb8weK7JPuKcPQzQA7P8LrsKh17p" | grep ismine
./raptoreum-cli validateaddress "RWqexfM1HdCNVfCYoiPX2E2bLCyncKnCwY" | grep ismine
./raptoreum-cli validateaddress "RNzheo3TFJ25yZtwqoJTkuvitHGui3zrPZ" | grep ismine
./raptoreum-cli validateaddress "RH8CzT9coKduL4ftHT5skavUEZeKtYG6zm" | grep ismine
./raptoreum-cli validateaddress "RAh6ynBjqWSb7DWTaeBeHXbkKywp4xKAyT" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
