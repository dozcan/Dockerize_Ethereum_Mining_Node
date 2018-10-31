FROM ubuntu:16.04
LABEL version="1.0"
LABEL maintainer="dozcan@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --yes software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update && apt-get install --yes geth
RUN adduser --disabled-login --gecos "" blockchain
COPY eth_common /home/blockchain/eth_common

RUN chown -R blockchain:blockchain /home/blockchain/eth_common
USER blockchain

WORKDIR /home/blockchain/eth_common
RUN geth init genesis.json
ENTRYPOINT ["./setup_account.sh"]
