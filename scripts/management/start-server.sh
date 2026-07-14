#!/bin/bash

# Start the Minecraft Forge server in a screen session

SERVER_DIR="/home/minecraft/server"
SESSION_NAME="mcserver"

cd "$SERVER_DIR" || exit 1

screen -S "$SESSION_NAME" -dm bash run.sh

echo "Minecraft server started in screen session: $SESSION_NAME"
