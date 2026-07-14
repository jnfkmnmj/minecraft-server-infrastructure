#!/bin/bash

# Display Minecraft server resource usage

echo "===== CPU and Memory Usage ====="
top -b -n 1 | head -15

echo ""
echo "===== Disk Usage ====="
df -h

echo ""
echo "===== Memory Usage ====="
free -h
