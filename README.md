# lucky_block_verify
Simple bash script to verify if you are a lucky block winner

## To Use
- Run from inside Raptoreum wallet directory (same place as raptoreum-qt, raptoreumd)
```
wget https://raw.githubusercontent.com/Raptor3um/lucky_block_verify/master/lb_verify.sh
chmod +x lb_verify.sh
./lb_verify.sh
```
If you see "ismine: true" the address just above that line is a winner.

You MUST modify this script to use addresses fromthe current contest before running.

- In our Discord type: trm.mineraddress <blockheight> to get the current winning address for a lucky block then add it in the script. Example:
  
  `rtm.mineraddress 16667`
  
  ##Discord
  https://discord.gg/2T8xG7e
