#!/bin/bash

geth --password password account new
geth --mine --minerthreads=1 --etherbase 0 --unlock 0 --password password
