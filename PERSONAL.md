## Programming: 

- [VSCode](https://github.com/UltiRequiem/Ubuntu-20.04/blob/main/Individual-Installers/vscode.sh)
- [Atom](https://github.com/UltiRequiem/Ubuntu-20.04/blob/main/Individual-Installers/atom.sh)
- DBeaver
- MySQL Workbench
- [JetBrains ToolBox:](https://www.jetbrains.com/toolbox-app)
  - PyCharm
  - IntelliJ
  - CLion
  - WebStorm
  - [Web Browser Extension](https://www.jetbrains.com/toolbox-app)

## Personalization: 
- [Tweaks](https://github.com/UltiRequiem/Ubuntu-20.04/blob/main/Individual-Installers/tweaks.sh): 
- [Sweet Dark](https://www.gnome-look.org/p/1253385)

## Web browsers:
- Brave (Principal):
```bash
sudo apt install apt-transport-https curl gnupg

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser
```
- [Chrome](https://www.google.com/chrome) (For School)
- Chromium (For Scrapping and Testing):
```bash
sudo snap install chromium
```
