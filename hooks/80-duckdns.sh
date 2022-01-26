#!/bin/sh

file=/usr/local/bin/duckdns
curl -fksSL https://www.duckdns.org/scripts/duck-setup-gui.sh > "${file}"
chmod +x "${file}"
