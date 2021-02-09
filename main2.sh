#!/usr/bin/env bash

read -p "Do you want to install Plank? [Y/n] " response3

if test "$response3" = "Y"
then
    apt update

    apt install plank
    echo "Plank has been installed successfully."

else
    echo "You didn't install Plank"
fi


read -p "Do you want to install Visual Studio Code? [Y/n] " response

if test "$response" = "Y"
then
    apt update
	apt install software-properties-common apt-transport-https wget

	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
	add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	apt install code
    echo "Visual Studio Code has been installed successfully."
else
    echo "You didn't install Visual Studio Code"
fi

read -p "Do you want to install Brave Web Browser? [Y/n] " response2

if test "$response2" = "Y"
then
    apt install apt-transport-https curl gnupg

    curl -s https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

    echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave5t5rjjg3s6k.onion/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    apt update

    apt install brave-browser
    echo "Brave has been installed successfully."
else
    echo "You didn't install Brave Secure Web Browser"
fi

read -p "Do you want to remove LibreOffice? [Y/n] " response4

if test "$response4" = "Y"
then
    apt-get remove --purge libreoffice-\* -y
    sudo apt autoremove
    echo "LibreOffice has been removed successfully."
else
    echo "You didn't remove LibreOffice"
fi

read -p "Do you want to install WPS(SNAP)? [Y/n] " response5

if test "$response5" = "Y"
then
    apt-get install snapd
    snap install wps-office
    echo "WPS has been installed successfully."
else
    echo "You didn't install WPS"
fi