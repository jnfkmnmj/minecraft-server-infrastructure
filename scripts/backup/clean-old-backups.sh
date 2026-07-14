#!/bin/bash

# Remove backups older than 7 days

BACKUP_DIR="/home/minecraft/backups"

find "$BACKUP_DIR" -type f -mtime +7 -name "*.tar.gz" -delete

echo "Old backups cleaned."
