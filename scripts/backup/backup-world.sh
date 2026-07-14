#!/bin/bash

# Backup Minecraft world data

SERVER_DIR="/home/minecraft/server"
BACKUP_DIR="/home/minecraft/backups"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/world-backup-$DATE.tar.gz" \
"$SERVER_DIR/world"

echo "World backup created:"
echo "$BACKUP_DIR/world-backup-$DATE.tar.gz"
