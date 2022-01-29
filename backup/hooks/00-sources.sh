#!/bin/sh
set -eu 

dearmor() {
    if [ "${3-}" ]; then 
        gpg --quiet --no-default-keyring --keyring "$2" --keyserver "$1" --recv-keys "$3"
    else
        curl -fsSL "$1" | gpg --dearmor | sudo tee "$2" >/dev/null
    fi
}

update() {
    echo "$2" | sudo tee /etc/apt/sources.list.d/"$1".list >/dev/null
    [ ! "${3-}" ] || dearmor "$3" /etc/apt/trusted.gpg.d/"$1".gpg "${4-}"
}

update docker 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce-archive-keyring.gpg] https://download.docker.com/linux/debian buster stable'
dearmor https://download.docker.com/linux/ubuntu/gpg /usr/share/keyrings/docker-archive-keyring.gpg 

update google-chrome-beta 'deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main' 'https://dl.google.com/linux/linux_signing_key.pub'

update mongo 'deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main' 'https://www.mongodb.org/static/pgp/server-5.0.asc' 

update debian-installer 'deb https://deb.debian.org/debian stable main/debian-installer'

update kali-bleeding-edge 'deb https://http.kali.org/kali kali-bleeding-edge main contrib non-free'

update kali-experimental 'deb https://http.kali.org/kali kali-experimental main contrib non-free'

update systemback 'deb [arch=amd64] http://mirrors.bwbot.org/ stable main' keyserver.ubuntu.com 50B2C005A67B264F

update cubic 'deb http://ppa.launchpad.net/cubic-wizard/release/ubuntu jammy main' keyserver.ubuntu.com 6494C6D6997C215E
