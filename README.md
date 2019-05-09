# lucky_block_verify
Simple bash script to verify if you are a lucky block winner

## To Use
- Run from inside Raptoreum wallet directory (same place as raptoreum-qt, raptoreumd)
```
wget https://github.com/Raptor3um/lucky_block_verify/blob/master/lb_verify.sh
chmod +x lb_verify.sh
./lb_verify.sh
```
If you see "ismine: true" the address just above that line is a winner.

This script is updated weekly (addresses) once the last lucky block is hit. If you want to run it for a contest in progress but yet to hit last lucky block:

- In our Discord type: trm.mineraddress <blockheight> to get the current winning address for a lucky block then add it in the script. Example:
  
  `rtm.mineraddress 16667`
  
  ##Discord
  https://discord.gg/2T8xG7e
