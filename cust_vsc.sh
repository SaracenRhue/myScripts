#!/bin/bash

apt update -y
apt upgrade -y
apt remove -y python
apt install -y build-essential procps file

useradd -m linuxbrew
sudo -u linuxbrew -i /bin/bash
PATH=~/.linuxbrew/bin:/usr/sbin:/usr/bin:/sbin:/bin
yes ' ' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sleep 5


brew install python nodejs npm openjdk kotlin go rust
source ~/.bashrc
npm install -g typescript
npm install -g sass
pip3 install requests selenium pygame pyautogui pyyaml
