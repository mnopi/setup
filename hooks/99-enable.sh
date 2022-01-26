#!/bin/sh

systemctl daemon-reload

systemctl enable docker
systemctl start docker

systemctl enable mongod
systemctl start mongod
