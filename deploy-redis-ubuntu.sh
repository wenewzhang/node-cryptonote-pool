#!/bin/sh
apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository   "deb [arch=amd64] https://download.docker.com/linux/ubuntu    $(lsb_release -cs)    stable"
apt-get update
apt-get install docker-ce
docker pull redis
docker run -d --restart unless-stopped -p 6379:6379 -v /var/redis/ --name wkp_redis redis 
