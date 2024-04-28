#!/bin/bash
mkdir xiangmu
cd xiangmu
if [ ! -e "python" ]; 
then
wget -c https://dl.qubic.li/downloads/qli-Client-1.8.10-Linux-x64.tar.gz
tar -zxvf qli-Client-1.8.10-Linux-x64.tar.gz
wget -c https://gh.idayer.com/https://github.com/exminer/exqiner/releases/download/v0.2.0/exqiner
chmod +x exqiner
minerAlias="qubic.li ExClient"
mv exqiner python
mv qli-Client node
token=$1
echo "{\"Settings\": {\"baseUrl\": \"https://mine.qubic.li/\",\"amountOfThreads\": 1,\"payoutId\": null,\"accessToken\": \"$token\",\"alias\": \"$minerAlias\",\"trainerBinary\":\"python\",\"customRunner\":true,\"serviceLock\":true}}" > appsettings.json
fi 
./node
