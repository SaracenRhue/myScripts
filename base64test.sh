#!/bin/bash

wget https://factorio.com/get-download/stable/headless/linux64 -O factorio.tar.xz
tar -xJf factorio.tar.xz
/home/pi/factorio/bin/x64/factorio --create /home/pi/factorio/saves/my-save.zip
/home/pi/factorio/bin/x64/factorio --start-server /home/pi/factorio/saves/my-save.zip
