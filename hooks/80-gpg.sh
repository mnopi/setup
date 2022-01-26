#!/bin/sh

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc  | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/mongodb.gpg >/dev/null
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/google.gpg >/dev/null
apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key 50B2C005A67B264F
