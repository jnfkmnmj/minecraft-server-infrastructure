#!/bin/bash

# Stop the Minecraft Forge server screen session

SESSION_NAME="mcserver"

if screen -list | grep -q "$SESSION_NAME"; then
    screen -S "$SESSION_NAME" -X quit
    echo "Minecraft server stopped."
else
    echo "Minecraft server is not running."
fi
