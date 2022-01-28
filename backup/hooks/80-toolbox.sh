#!/bin/sh

version=1.22.10970
tmp="$(mktemp -d)"
tar="${tmp}/download.tar.gz"
file=/usr/local/bin/duckdns
curl -fksSL "https://download.jetbrains.com/toolbox/jetbrains-toolbox-${version}.tar.gz" > "${tar}"
cd "${tmp}"
tar -xvzf "${tar}"
mv "${tmp}"/*toolbox*/jetbrains-toolbox /usr/local/bin/toolbox
