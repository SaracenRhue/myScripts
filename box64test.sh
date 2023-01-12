#!/bin/bash

wget https://factorio.com/get-download/stable/headless/linux64 -O factorio.tar.xz
tar -xJf factorio.tar.xz
./factorio/bin/x64/factorio --create ./factorio/saves/my-save.zip
./factorio/bin/x64/factorio --start-server ./factorio/saves/my-save.zip
