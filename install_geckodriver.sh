#!/bin/bash    
    
wget https://github.com/mozilla/geckodriver/releases/download/v0.32.0/geckodriver-v0.32.0-linux64.tar.gz && \
tar -xvzf geckodriver* && \
chmod +x geckodriver && \
mv geckodriver /usr/local/bin/ && \
rm geckodriver* && \
export PATH=/usr/local/bin:$PATH
