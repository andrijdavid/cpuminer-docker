#!/bin/bash

FILE="/workdir/cpuminer"

if [ -f "$FILE" ]; then
    echo "CPU miner found. Executing it with arguments: $*"
    exec "$FILE" "$@"
else
    echo "Cpu miner not found. Building it"
    git clone https://github.com/JayDDee/cpuminer-opt /workdir/source
    cd /workdir/source
    bash /scripts/build.sh
    cp /workdir/source/cpuminer /workdir/
    chmod +x "$FILE"
    exec "$FILE" "$@"
fi