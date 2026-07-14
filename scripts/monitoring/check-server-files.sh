#!/bin/bash

# Verify important Minecraft server directories

SERVER_DIR="/home/minecraft/server"

echo "Checking server directories..."

for folder in mods config world logs; do
    if [ -d "$SERVER_DIR/$folder" ]; then
        echo "$folder directory exists."
    else
        echo "$folder directory missing."
    fi
done
