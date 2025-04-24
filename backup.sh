#!/bin/bash

# Folder to backup
SOURCE_DIR="sample-data"

# Archive name format: backup-YYYY-MM-DD.tar.gz
TIMESTAMP=$(date +"%Y-%m-%d")
BACKUP_NAME="backup-$TIMESTAMP.tar.gz"

# Compress the folder
tar -czf $BACKUP_NAME $SOURCE_DIR

echo "✅ Backup created: $BACKUP_NAME"

