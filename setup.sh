#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
	apache2-utils \
	net-tools \
	git

cd /etc/
git clone https://github.com/SirBiggin/itraefik
cd /etc/itraefik/
sudo mkdir -p /etc/itraefik/certs
sudo touch /etc/itraefik/certs/acme.json
sudo chmod 600 /etc/itraefik/certs/acme.json
cd /etc/itraefik/
ls - l run.sh
sudo chmod 774 run.sh
wget https://github.com/traefik/traefik/releases/download/v2.9.7/traefik_v2.9.7_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.7_linux_amd64.tar.gz
cd /etc/itraefik/
./run.sh

reboot