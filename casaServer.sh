#!/bin/bash

sudo apt update && apt upgrade -y
sudo apt install -y curl wget git htop
curl -fsSL https://get.casaos.io | sudo bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up