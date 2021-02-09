#!/usr/bin/env bash

read -rp "Do you want to install Visual Studio Code? [Y/n] " response

case "$response" in
    [yY][eE][sS]|[yY]|"")
    apt update
	apt install software-properties-common apt-transport-https wget

	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
	add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	apt install code
	exit 0
        ;;
    *)
        echo "Invalid input"
        exit 1
        ;;
esac

read -rp "Do you want to install Brave Web Browser? [Y/n] " response2

case "$response2" in
    [yY][eE][sS]|[yY]|"")
    apt install apt-transport-https curl gnupg

    curl -s https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    apt update

    apt install brave-browser
	exit 0
        ;;
    *)
        echo "Invalid input"
        exit 1
        ;;
esac
