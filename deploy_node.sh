#!/bin/sh
apt install libboost-all-dev
cd ../
wget https://nodejs.org/dist/v0.10.45/node-v0.10.45-linux-x64.tar.gz
tar xvf node-v0.10.45-linux-x64.tar.gz
cd node-cryptonote-pool
../node-v0.10.45-linux-x64/bin/npm update
