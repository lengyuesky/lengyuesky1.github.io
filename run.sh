#!/bin/bash
wget https://dl.qubic.li/downloads/qli-Client-1.9.6-Linux-x64.tar.gz
tar -zxvf qli-Client-1.9.6-Linux-x64.tar.gz
rm qli-Client-1.9.6-Linux-x64.tar.gz
rm appsettings.json
mv qli-Client node
wget https://gh.idayer.com/https://raw.githubusercontent.com/lengyuesky/lengyuesky1.github.io/main/appsettingsex.json
wget https://gh.idayer.com/https://raw.githubusercontent.com/lengyuesky/lengyuesky1.github.io/main/lengyuesky.ipynb
mv appsettingsex.json appsettings.json
./node
