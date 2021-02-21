## Programming: 

- VSCode
- Atom
- PyCharm
- DBeaver
- MySQL Workbench

## Personalization: 
- Tweaks: 
```bash 
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool

```
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
