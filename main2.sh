#!/usr/bin/env bash

read -p "Do you want to install Plank? [Y/n] " plank

if test "$plank" = "Y"
then
    apt update

    apt install plank
    echo "Plank has been installed successfully."

else
    echo "You didn't install Plank"
fi



read -p "Do you want to install Visual Studio Code? [Y/n] " vscode

if test "$vscode" = "Y"
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

read -p "Do you want to install Brave Web Browser? [Y/n] " brave

if test "$brave" = "Y"
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

read -p "Do you want to remove LibreOffice? [Y/n] " loffice

if test "$loffice" = "Y"
then
    apt-get remove --purge libreoffice-\* -y
    sudo apt autoremove
    echo "LibreOffice has been removed successfully."
else
    echo "You didn't remove LibreOffice"
fi

read -p "Do you want to install WPS(SNAP)? [Y/n] " wps

if test "$wps" = "Y"
then
    apt-get install snapd
    snap install wps-office
    echo "WPS has been installed successfully."
else
    echo "You didn't install WPS"
fi

read -p "Do you want to install Recommended NVIDIA Proprietary Drivers? [Y/n] " nvidia

if test "$nvidia" = "Y"
then
    ubuntu-drivers devices
    ubuntu-drivers autoinstall
    echo "Proprietary NVIDIA Drivers has installed successfully."
else
    echo "You didn't install NVIDIA Drivers"
fi

read -p "Do you want to reboot? [Y/n] " reb

if test "$reb" = "Y"
then
    reboot
else
    echo "You didn't reboot"
fi