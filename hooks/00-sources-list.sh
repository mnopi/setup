#!/bin/sh
list="$(cat <<EOT
deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce-archive-keyring.gpg] https://download.docker.com/linux/debian buster stable
deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main
deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main
deb [arch=amd64] http://mirrors.bwbot.org/ stable main
deb https://deb.debian.org/debian stable main/debian-installer
EOT
)"
