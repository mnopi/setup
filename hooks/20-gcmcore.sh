#!/bin/sh

tmp="$(mktemp -d)"
wget -q -O "${tmp}"/download.deb https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.632/gcmcore-linux_amd64.2.0.632.34631.deb
gdebi --quiet --non-interactive "${tmp}"/download.deb
