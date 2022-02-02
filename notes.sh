
apt install linux-headers-amd64

# non-free packages, drivers

sudo sed -i 's/ main.*/ main contrib non-free/g' /etc/apt/sources.list ; sudo apt update
apt install firmware-linux

apt install nvidia-detect
apt install nvidia-driver

# man pages y capturas de pantalla de deb config y que mantenga los /etc/mios

