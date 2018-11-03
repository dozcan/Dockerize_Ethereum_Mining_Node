#!/bin/bash

`geth --password password account new`
geth --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcport 8545 --mine --minerthreads=1 --etherbase 0 --unlock 0 --password password console
