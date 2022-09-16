#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt remove -y python
sudo apt install -y g++ zsh zsh-autosuggestions zsh-syntax-highlighting build-essential procps curl file git curl

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

source ~/.bashrc


brew install htop python nodejs npm openjdk kotlin go rust
source ~/.bashrc
pip3 install requests selenium pygame pyautogui
