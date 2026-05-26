#!/bin/bash

# Generate basic Minecraft server status report

echo "===== Minecraft Server Report ====="

echo ""
echo "Date:"
date

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Running Screen Sessions:"
screen -ls
