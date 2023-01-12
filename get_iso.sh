#!/bin/bash

    cat<<EOF
    Please enter your choice:
     0) Arch
     1) Debian
     2) EndeavourOS
     3) Manjaro
     4) NixOS
     5) Ubuntu
EOF
    read -n1 -s
    case "$REPLY" in
        "0")clear && wget -c --retry-connrefused --tries=0 --timeout=5 http://ftp.agdsn.de/pub/mirrors/archlinux/iso/2023.01.01/archlinux-x86_64.iso;;
        "1")clear && wget -c --retry-connrefused --tries=0 --timeout=5 https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/firmware-testing-amd64-netinst.iso;;
        "2")clear && wget -c --retry-connrefused --tries=0 --timeout=5 https://mirror.alpix.eu/endeavouros/iso/EndeavourOS_Cassini_22_12.iso;;
        "3")clear && wget -c --retry-connrefused --tries=0 --timeout=5 https://download.manjaro.org/gnome/22.0/manjaro-gnome-22.0-minimal-221224-linux61.iso;;
        "4")clear && wget -c --retry-connrefused --tries=0 --timeout=5 https://channels.nixos.org/nixos-22.11/latest-nixos-gnome-x86_64-linux.iso;;
        "5")clear && wget -c --retry-connrefused --tries=0 --timeout=5 https://releases.ubuntu.com/22.04.1/ubuntu-22.04.1-live-server-amd64.iso;;
     * )  echo "invalid option" ;;
    esac