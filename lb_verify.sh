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
./raptoreum-cli validateaddress "RLSr8SoKXoUnY4rtgJDRoBzo1JQAqswQ8z" | grep ismine
./raptoreum-cli validateaddress "RFATDPYiEwpu79RbVqnoftmNLT7NQjBynR" | grep ismine
./raptoreum-cli validateaddress "RWr4YQNLbiKqcPCNDvGxyGMTFtiY3yK16S" | grep ismine
./raptoreum-cli validateaddress "RXG3vpJesSaPz326EEN36mHJot7zznazpN" | grep ismine
./raptoreum-cli validateaddress "RWNH1vTMb9SFeKxub9RGeVyK3znBmFG9Qp" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

set -v
./raptoreum-cli validateaddress "RLN3fSnB6g8oRNPqpqbLbK6Vexoca6yBjE" | grep ismine
./raptoreum-cli validateaddress "R9oteZeac43f1UVhtm3hM4rF3CueivWFm7" | grep ismine
./raptoreum-cli validateaddress "RCZARr8VjyLZn89Sjz6NjcttBUiwFMJzDT" | grep ismine
./raptoreum-cli validateaddress "RRNUDXavLkP3gW8HVKjKLjVziTcEp2bTp6" | grep ismine
./raptoreum-cli validateaddress "RQEdAWnYBTqfnit7XZLbTrqApqJzDVgCXD" | grep ismine
./raptoreum-cli validateaddress "RPfV2PPReU8Xdec7o3fUerjYsnKZT4T6zr" | grep ismine
./raptoreum-cli validateaddress "RTUHyUrgg6vjw1RukTbM8VYMPhmxdozffq" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
