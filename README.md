# lucky_block_verify 
Simple bash script to verify if you own a winning address in Raptoreums weekly testnet mining contest.

Up to date for the May 10 > May 17 mining contest, no editing needed just run it.

## To Use
- Run from inside Raptoreum wallet directory (same place as raptoreum-qt, raptoreumd)
```
wget https://raw.githubusercontent.com/Raptor3um/lucky_block_verify/master/lb_verify.sh
chmod +x lb_verify.sh
./lb_verify.sh
```
If you see "ismine: true" the address just above that line is a winner.

# Claiming Your IOUs

To verify that you own a winning address you must verify ownership by "signing". For QT **click File > Sign Message > Enter your winning address > a message > and click "Sign Message".** Send the address, message, and signature to Charlie on Discord.

**For CLI:** `./raptoreum-cli signmessage "address" "message"`
  
  ## Discord
  https://discord.gg/2T8xG7e
