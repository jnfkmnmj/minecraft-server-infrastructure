#!/bin/bash

# Create backup directory for Minecraft server backups

BACKUP_DIR="/home/minecraft/backups"

if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
    echo "Backup directory created."
else
    echo "Backup directory already exists."
fi
