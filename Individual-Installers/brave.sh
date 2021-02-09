#!/usr/bin/env bash

apt install apt-transport-https curl gnupg

curl -s https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

apt update

apt install brave-browser