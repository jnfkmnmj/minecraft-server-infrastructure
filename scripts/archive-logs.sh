#!/bin/bash

# Archive Minecraft server logs

LOG_DIR="/home/minecraft/server/logs"
ARCHIVE_DIR="/home/minecraft/log-archives"
DATE=$(date +%F)

mkdir -p "$ARCHIVE_DIR"

tar -czf "$ARCHIVE_DIR/logs-$DATE.tar.gz" "$LOG_DIR"

echo "Server logs archived."
