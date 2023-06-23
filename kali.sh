#!/bin/bash


sudo apt update && sudo apt upgrade -y
sudo apt install -y wget curl neofetch python3-pip nodejs npm htop terminator
echo "neofetch" >> ~/.zshrc
echo "alias 'python'='python3'" >> ~/.zshrc
sh <(curl -L https://nixos.org/nix/install) --daemon

echo "export NIXPKGS_ALLOW_UNFREE=1" >> ~/.zshrc
source ~/.zshrc
echo "set root password"
sudo passwd root


# nix-env -iA nixpkgs.vscode



