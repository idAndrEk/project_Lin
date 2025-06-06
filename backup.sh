#!/bin/bash

# Папка для бэкапа
BACKUP_DIR="backup_$(date +%F)"
TXT_FILES=$(find . -name "*.txt")

mkdir -p "$BACKUP_DIR"
cp $TXT_FILES "$BACKUP_DIR/" 2>/dev/null
tar -czf "${BACKUP_DIR}.tar.gz" "$BACKUP_DIR"
rm -rf "$BACKUP_DIR"

echo "Бэкап завершён: $(echo $TXT_FILES | wc -w) файлов"
