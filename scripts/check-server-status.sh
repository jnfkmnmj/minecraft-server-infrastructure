#!/bin/bash

# Check if Minecraft server screen session is running

SESSION_NAME="mcserver"

if screen -list | grep -q "$SESSION_NAME"; then
    echo "Minecraft server is currently running."
else
    echo "Minecraft server is offline."
fi
