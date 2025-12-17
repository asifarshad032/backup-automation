#!/bin/bash

# =============================
# Automated Backup Script
# =============================

SOURCE_DIR="/home/$USER/Documents"
BACKUP_DIR="/home/$USER/backups"
LOG_FILE="/home/$USER/backups/backup.log"
DATE=$(date +"%Y-%m-%d")

mkdir -p "$BACKUP_DIR"

echo "Backup started at $(date)" >> "$LOG_FILE"

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR" 2>> "$LOG_FILE"

if [ $? -eq 0 ]; then
    echo "Backup completed successfully" >> "$LOG_FILE"
else
    echo "Backup failed" >> "$LOG_FILE"
fi

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -mtime +7 -name "*.tar.gz" -exec rm {} \;

echo "Old backups cleaned" >> "$LOG_FILE"
echo "Backup finished at $(date)" >> "$LOG_FILE"

