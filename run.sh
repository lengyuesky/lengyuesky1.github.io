#!/bin/bash
wget https://gh.idayer.com/https://github.com/lengyuesky/lengyuesky1.github.io/releases/download/1.3/qli-Client-1.9.0-Linux-x64.tar.gz
tar -zxvf qli-Client-1.9.0-Linux-x64.tar.gz
rm qli-Client-1.9.0-Linux-x64.tar.gz
rm appsettings.json
wget https://gh.idayer.com/https://raw.githubusercontent.com/lengyuesky/lengyuesky1.github.io/main/appsettings.json
mv qli-Client lengyuesky
chmod +777 lengyuesky
nohup ./lengyuesky  >> run.log 2>&1 &
while true
do
    echo "This loop will run indefinitely. Press Ctrl+C to exit."
    nvidia-smi
    sleep 5
done
