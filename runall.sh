#!/bin/bash
if ps aux | grep 'apoolminer' | grep -q 'apool.io'; then
    echo "ApoolMiner already running."
    exit 1
else
    nohup ./apoolminer --account CP_ft0xn8eci4 --pool aws.lengyuesky.me:3334 >> qubic.log 2>&1 &
fi
