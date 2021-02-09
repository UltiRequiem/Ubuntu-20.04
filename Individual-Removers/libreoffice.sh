#!/usr/bin/env bash

apt-get remove --purge libreoffice-\* -y
sudo apt autoremove
echo "LibreOffice has been removed successfully."