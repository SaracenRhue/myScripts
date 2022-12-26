#!/bin/bash

sudo apt update && sudo apt upgrade -y
# setup zsh if not installed
if [ -n "$ZSH_VERSION" ]; then
    sudo apt install -y zsh zsh-autosuggestions zsh-syntax-highlighting neofetch
    echo "plugins=(zsh-autosuggestions)" >> ~/.zshrc
    sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
    curl -L http://install.ohmyz.sh | sh
    chsh -s $(which zsh)
    echo "neofetch" >> ~/.zshrc
fi
# install essentials
sudo apt install -y git nano build-essential cmake curl wget htop
#install base64
git clone https://github.com/ptitSeb/box64
cd box64
mkdir build; cd build; cmake .. -DRPI4ARM64=1 -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j4
sudo make install
# clean
cd
sudo rm -fr ./base64

sudo systemctl restart systemd-binfmt

sudo reboot now
