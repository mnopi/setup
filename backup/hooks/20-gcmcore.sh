#!/bin/sh

tmp="$(mktemp -d)"
wget -q -O "${tmp}"/download.deb https://github.com/GitCredentialManager/git-credential-manager/releases/download/v2.0.632/gcmcore-linux_amd64.2.0.632.34631.deb
gdebi --quiet --non-interactive "${tmp}"/download.deb
git-credential-manager-core configure

# https://github.com/GitCredentialManager/git-credential-manager/blob/main/docs/configuration.md
git config --global credential.helper /usr/local/share/gcm-core/git-credential-manager-core  # osxkeychain
git config --global credential.interactive auto  # GCM_INTERACTIVE
git config --global credential.credentialStore gpg  # GCM_CREDENTIAL_STORE