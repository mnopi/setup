#!/bin/sh

apt-get update
apt-get full-upgrade -y
apt-get autoremove -y
apt-get clean -y