#!/bin/bash

cd

sudo apt remove -y python
sudo apt update -y


sudo apt install build-essential procps file -y

yes ' ' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc


brew install htop python nodejs npm openjdk kotlin go rust
source ~/.bashrc
npm install -g typescript
npm install -g sass
pip3 install requests selenium pygame pyautogui pyyaml Pillow python-opencv

sudo apt upgrade -y
