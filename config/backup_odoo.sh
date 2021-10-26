#!/bin/bash

# Create a backup directory
mkdir -p ${BACKUP_DIR}

# Create a backup
curl -X POST \
    -F "master_pwd=${DB_MASTER_PASSWORD}" \
    -F "name=${DB_NAME}" \
    -F "backup_format=zip" \
    -o ${BACKUP_DIR}/${DB_NAME}-$(date +%F-%H-%M).zip \
    http://web:8069/web/database/backup


# Delete old backups
# .*.zip delete
find ${BACKUP_DIR} -type f -mtime +7 -name "*.zip" -delete