#!/bin/bash

LOG_DIR="logs"
ARCHIVE_NAME="old-logs-$(date +'%Y-%m-%d').tar.gz"

# Find .log files older than 7 days
OLD_LOGS=$(find $LOG_DIR -name "*.log" -mtime +1)

# Only archive if old logs exist
if [[ -n "$OLD_LOGS" ]]; then
  tar -czf $ARCHIVE_NAME $OLD_LOGS
  echo "🗃️ Archived old logs into $ARCHIVE_NAME"

  # Now remove the old logs
  echo "$OLD_LOGS" | xargs rm
  echo "🧹 Removed old logs"
else
  echo "📁 No logs older than 7 days found."
fi
