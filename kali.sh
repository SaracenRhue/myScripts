#!/bin/bash


sudo apt update && sudo apt upgrade -y
sudo apt install -y wget curl neofetch python3-pip nodejs npm htop 
echo "neofetch" >> ~/.zshrc
sh <(curl -L https://nixos.org/nix/install) --daemon

echo "export NIXPKGS_ALLOW_UNFREE=1" >> ~/.zshrc
source ~/.zshrc
nix-env -iA nixpkgs.vscode
echo "set root password"
sudo passwd root


