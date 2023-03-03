#!/bin/bash
cd /etc/
rm -r /etc/itraefik

cd /etc/
git clone https://github.com/SirBiggin/itraefik
cd /etc/itraefik/
ls -l /etc/itraefik/run.sh
ls -l /etc/itraefik/redo.sh
chmod 774 /etc/itraefik/run.sh
chmod +x /etc/itraefik/run.sh
chmod 774 /etc/itraefik/redo.sh
chmod +x /etc/itraefik/redo.sh

cd /etc/itraefik/
sudo mkdir -p /etc/itraefik/certs
sudo touch /etc/itraefik/certs/prod-acme.json
sudo touch /etc/itraefik/certs/non-prod-acme.json
sudo chmod 600 /etc/itraefik/certs/prod-acme.json
sudo chmod 600 /etc/itraefik/certs/non-prod-acme.json


sudo mkdir -p /var/log/traefik
sudo touch /var/log/traefik/traefik.log
sudo touch /var/log/traefik/access.log


cd /etc/itraefik/
#https://github.com/traefik/traefik/releases
wget https://github.com/traefik/traefik/releases/download/v2.9.8/traefik_v2.9.8_linux_amd64.tar.gz
tar -zxvf traefik_v2.9.8_linux_amd64.tar.gz
/etc/itraefik/run.sh
