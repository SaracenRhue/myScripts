#!/bin/bash

apk update && apk upgrade
apk add bash git curl wget python3 py3-pip nodejs npm firefox-esr
pip3 install numpy pyyaml selenium
