#!/bin/bash

apt update -y
apt upgrade -y
apt remove -y python
apt install -y g++ zsh zsh-autosuggestions zsh-syntax-highlighting build-essential procps curl file git curl

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install htop python nodejs npm openjdk kotlin go rust

 sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10
 
 curl -L http://install.ohmyz.sh | s


rm -fr ./codeserver.sh
source ~/.bashrc
