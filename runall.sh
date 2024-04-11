#!/bin/bash
if ps aux | grep 'apoolminer' | grep -q 'apool.io'; then
    echo "ApoolMiner already running."
    exit 1
else
    nohup ./apoolminer --account CP_ft0xn8eci4 --pool qubic1.hk.apool.io:3334 >> qubic.log 2>&1 &
fi
