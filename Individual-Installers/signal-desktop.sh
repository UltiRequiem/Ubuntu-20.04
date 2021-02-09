#!/usr/bin/env bash

wget -O- https://updates.signal.org/desktop/apt/keys.asc |\
pt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" |\
tee -a /etc/apt/sources.list.d/signal-xenial.list
apt update && sudo apt install signal-desktop
echo "Signal Desktop has been installed successfully."