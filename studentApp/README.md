# myDapp

## myDapp - studentApp

### 필요사항

geth : localnetwork

```bash
geth --networkid 4693 --rpc --rpcport 8545 --rpccorsdomain "*" --rpcaddr "0.0.0.0"  --rpcapi "admin,eth,debug,miner,net,txpool,personal,web3" --ws --wsport 8546 --wsorigins "*" --wsapi "admin,eth,debug,miner,net,txpool,personal,web3" console --allow-insecure-unlock --mine --miner.threads 1 --unlock 0 --password ./password
```

npm module

- truffle
- web3
- browserify

### 실행방법

1. 파일 다운

```bash
git clone https://github.com/AdoreJE/myDapp
cd myDapp/studentApp
```

2. 모듈 설치

```bash
npm install --save
npm install -g browserify
```

3. bundle.js 생성

```bash
browserify main.js -o bundle.js
```

4. index.html 실행
