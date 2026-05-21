#!/bin/bash

# Restart the Minecraft Forge server

SESSION_NAME="mcserver"
SERVER_DIR="/home/minecraft/server"

screen -S "$SESSION_NAME" -X quit

sleep 5

cd "$SERVER_DIR" || exit 1

screen -S "$SESSION_NAME" -dm bash run.sh

echo "Minecraft server restarted."
