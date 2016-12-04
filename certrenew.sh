#!/bin/zsh
cd ~/letsencrypt
git pull
cd 
sudo systemctl stop nginx
sudo ~/letsencrypt/certbot-auto --config ~/letsencrypt-certrenew/cli.ini certonly --renew-by-default
sudo systemctl start nginx
