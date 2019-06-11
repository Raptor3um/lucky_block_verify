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
./raptoreum-cli validateaddress "RQ9i1EMb2LizrnMiKNwHYCUAChNjdtUr2g" | grep ismine
./raptoreum-cli validateaddress "RM4fhsJDVSJKFofHbiWh3gsF9YgBx4DfuJ" | grep ismine
./raptoreum-cli validateaddress "RF8yi3UdfUucgWRJnrfrSeYqgdmewQfZC6" | grep ismine
./raptoreum-cli validateaddress "RKB5aZeHUcfpiGUpEabTfQgBaCgngTAvkn" | grep ismine
./raptoreum-cli validateaddress "RKC1ZrXcLQ4jmAQgzcXrANezfBZDqLXnfD" | grep ismine
set +v
echo
echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."
sleep 5
echo "Now checking if you are the owner of any of the regular winning addresses...."

echo

set -v
./raptoreum-cli validateaddress "RB5XL5814ruuKseA9LwPWgezCsS3Qk9gG6" | grep ismine
./raptoreum-cli validateaddress "RQcYMS1Y8kN88DeUq4sxUaryDgtqZSWFVr" | grep ismine
./raptoreum-cli validateaddress "R9n2vH24yKSgHtiy7pxmzQdC3KZU7xgLc5" | grep ismine
./raptoreum-cli validateaddress "RNzheo3TFJ25yZtwqoJTkuvitHGui3zrPZ" | grep ismine
./raptoreum-cli validateaddress "RMJiV7gPAFM7dW4DKh7TCxhLEE6FJKpoNB" | grep ismine
./raptoreum-cli validateaddress "R9oVJX94XuiuUVpEvC8QdYVrpYQ3QpgSPZ" | grep ismine
./raptoreum-cli validateaddress "RBGQcSommU9UXi9VS3Bf2L2xyG7jMLg8Bk" | grep ismine
set +v

echo "Address verification complete! If you see:"
echo "ismine: true"
echo "It means you are a lucky block winner! To claim your Raptoreum IOU you must sign a message with your winning address, once done send Charlie the address, message, and signature on Discord."

exit 0
