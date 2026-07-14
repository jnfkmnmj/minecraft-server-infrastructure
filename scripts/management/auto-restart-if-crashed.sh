#!/bin/bash

# Automatically restart Minecraft server if it is offline

SESSION_NAME="mcserver"
SERVER_DIR="/home/minecraft/server"

if screen -list | grep -q "$SESSION_NAME"; then
    echo "Minecraft server is already running."
else
    echo "Server offline. Restarting server..."

    cd "$SERVER_DIR" || exit 1

    screen -S "$SESSION_NAME" -dm bash run.sh

    echo "Server restarted."
fi
