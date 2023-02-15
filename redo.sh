#!/bin/bash
cd /etc/
rm -r /etc/itraefik

cd /etc/
git clone https://github.com/SirBiggin/itraefik
cd /etc/traefik/
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