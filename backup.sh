#!/bin/bash

# === CONFIGURATION ===
SOURCE_DIR="/c/Users/Lenovo/Documents/important"
BACKUP_DIR="/c/Users/Lenovo/backups"
DATE=$(date +'%Y-%m-%d_%H-%M-%S')
FILENAME="backup_$DATE.tar.gz"
LOGFILE="$BACKUP_DIR/backup.log"

# === CREATE BACKUP DIR IF NOT EXISTS ===
mkdir -p "$BACKUP_DIR"

# === BACKUP OPERATION ===
tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

# === LOGGING ===
if [ $? -eq 0 ]; then
    echo "[$(date)] Backup successful: $FILENAME" >> "$LOGFILE"
else
    echo "[$(date)] Backup FAILED for: $FILENAME" >> "$LOGFILE"
fi
