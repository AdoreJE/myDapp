# myDapp

## myDapp - wallet

### 필요사항
geth : localnetwork
```bash
geth --datadir localnetwork --rpc --rpcport 8545 --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "admin,debug,eth,web3,personal,miner,txpool" --allow-insecue-unlock
```

npm module 설치
```bash
npm install --save
```

### 실행방법
1. 파일 다운
```bash
git clone https://github.com/AdoreJE/myDapp
cd myDapp

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
