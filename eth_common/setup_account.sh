#!/bin/bash

ad = `geth --password password account new`
geth --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*"  --mine --minerthreads=1 --etherbase 0 --unlock 0 --password password --networkid 11 console
