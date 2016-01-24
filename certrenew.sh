#!/bin/zsh
cd ~/letsencrypt
git pull
cd 
sudo systemctl stop nginx
sudo ~/letsencrypt/letsencrypt-auto -c ~/letsencrypt-certrenew/cli.ini certonly --renew-by-default
sudo systemctl start nginx
