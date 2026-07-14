#!/bin/bash

# Update Minecraft server files

SERVER_DIR="/home/minecraft/server"
UPDATE_DIR="/home/minecraft/update"

echo "Stopping server..."
screen -S mcserver -X quit

sleep 5

echo "Copying updated files..."
cp -r "$UPDATE_DIR"/* "$SERVER_DIR"/

echo "Restarting server..."
cd "$SERVER_DIR" || exit 1

screen -S mcserver -dm bash run.sh

echo "Server update completed."
