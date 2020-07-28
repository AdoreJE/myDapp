# myDapp

## [myDapp - walletApp](https://github.com/AdoreJE/myDapp/tree/master/walletApp)

## [myDapp - studentApp](https://github.com/AdoreJE/myDapp/tree/master/studentApp)

### 필요사항

geth : localnetwork

```bash
geth --networkid 4693 --rpc --rpcport 8545 --rpccorsdomain "*" --rpcaddr "0.0.0.0"  --rpcapi "admin,eth,debug,miner,net,txpool,personal,web3" --ws --wsport 8546 --wsorigins "*" --wsapi "admin,eth,debug,miner,net,txpool,personal,web3" console --allow-insecure-unlock --mine --miner.threads 1 --unlock 0 --password ./password
```

npm module

- truffle
- web3
- browserify
