#!/usr/bin/env bash

wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
dpkg -i dbeaver-ce_latest_amd64.deb
apt install -f
