#!/bin/bash

cd
sudo apt update -y
sudo apt upgrade -y
sudo apt remove -y python
sudo apt install build-essential procps file -y

yes ' ' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

source ~/.bashrc


brew install htop python nodejs npm openjdk kotlin go rust
source ~/.bashrc
npm install -g typescript
npm install -g sass
pip3 install requests selenium pygame pyautogui
