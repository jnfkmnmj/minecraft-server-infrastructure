#!/bin/bash

# List Java processes related to the Minecraft server

echo "===== Java Processes ====="

ps aux | grep java | grep -v grep

echo ""
echo "Process check completed."
