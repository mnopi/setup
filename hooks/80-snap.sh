#!/bin/sh

snap install core

classic="$(cat <<EOF
backupz
convos
datagrip
deja-dup
gimp
go
goland
google-chat-electron
hola-proxy
icloud-for-linux
intellij-idea-ultimate
irccloud
konversation
ngrok
node
odrive-unofficial
ohmyirc
onionshare
opera-beta
opera-proxy
pycharm-professional
riseup-vpn
ruby
rubymine
slack
spotify
skype
snap-store
thunderbird
webstorm
EOF
)"

for i in ${classic}; do snap install --classic "${i}"; done 
snap install  --candidate ktorrent