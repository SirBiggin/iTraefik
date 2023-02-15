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
git clone https://github.com/SirBiggin/iTraefik
cd /etc/traefik/
sudo mkdir -p /etc/traefik/certs
sudo touch /etc/traefik/certs/acme.json
sudo chmod 600 /etc/traefik/certs/acme.json
cd /etc/traefik/
ls - l run.sh
sudo chmod 774 run.sh
wget https://github.com/traefik/traefik/releases/download/v2.9.7/traefik_v2.9.7_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.7_linux_amd64.tar.gz
cd /etc/traefik/
./run.sh

reboot