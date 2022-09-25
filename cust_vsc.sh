#!/bin/bash

apt update -y
apt upgrade -y
apt remove -y python
apt install -y build-essential procps file


yes ' ' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

sleep 5

source ~/.bashrc
brew install python nodejs npm openjdk kotlin go rust
source ~/.bashrc
npm install -g typescript
npm install -g sass
pip3 install requests selenium pygame pyautogui pyyaml
