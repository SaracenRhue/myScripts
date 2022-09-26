#!/bin/bash

apt update -y
apt upgrade -y
apt remove -y python
apt install -y build-essential procps file
apt install python3
