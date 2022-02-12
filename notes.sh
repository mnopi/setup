
#
<<< 'print(1)' python3
python3 -c 'print(1)'
<<<'scale=1;(3396721)*4096/2^30' bc

# disk
df -H /
df -H / | tail -1 | awk '{ print $1 }'

# Root reserved space 5%
sudo tune2fs -l "$(df -H / | tail -1 | awk '{ print $1 }')" | grep "Reserved block count:" | awk '{ print $NF-1 }'

apt install linux-headers-amd64

# non-free packages, drivers

sudo sed -i 's/ main.*/ main contrib non-free/g' /etc/apt/sources.list ; sudo apt update
apt install firmware-linux

apt install nvidia-detect
apt install nvidia-driver

# man pages y capturas de pantalla de deb config y que mantenga los /etc/mios

