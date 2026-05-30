#!/bin/bash

# Backup Minecraft server configuration files

SERVER_DIR="/home/minecraft/server"
BACKUP_DIR="/home/minecraft/config-backups"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/config-backup-$DATE.tar.gz" \
"$SERVER_DIR/config" \
"$SERVER_DIR/server.properties"

echo "Configuration backup completed."
