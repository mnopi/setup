# setup
Kali development desktop

## Install
TODO: como hacer el init y primero el clone y luego los secretos y luego si es development --recursive 
git submodule update --init --recursive
### Development
```shell
git clone --recursive git@github.com:j5pu/setup.git
git submodule update --init --merge --recursive
```
https://github.com/GitCredentialManager/git-credential-manager/blob/main/docs/configuration.md
apt install gnome-keyring seahorse
https://stackoverflow.com/questions/18770545/why-is-my-git-submodule-head-detached-from-master
git config -f .gitmodules submodule.$name.update merge

https://stackoverflow.com/questions/59258793/gitconfig-credential-os-check
[credential]
    helper = "!f() { if [ \"$(uname -s)\" = Linux ]; then git credential-cache --timeout 3600 \"$@\"; else git credential-osxkeychain \"$@\"; fi; };f"
limpiar los modulos y añadirlos poniendo despues lo del merge

empezar un git config qe yo enienda y ponber la default strategy de merge 

el flakpack de github desktop y asi si no hay token hacer el clone abriendo la app y asi guarda la key y puedo bajar el secrets.

o lo que sea
flatpak install flathub io.github.shiftey.Desktop  # install (añadir alias)
flatpak run io.github.shiftey.Desktop  # run (añadir un alias)

apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo  # adds flatpak repository
