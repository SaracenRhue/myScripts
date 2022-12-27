#!/bin/bash

# install zsh zsh-autosuggestions zsh-syntax-highlighting neofetch
# setup zsh if not installed
if [ -n "$ZSH_VERSION" ]; then
    echo "plugins=(zsh-autosuggestions)" >> ~/.zshrc
    sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc
    curl -L http://install.ohmyz.sh | sh
    chsh -s $(which zsh)
    echo "neofetch" >> ~/.zshrc
fi
