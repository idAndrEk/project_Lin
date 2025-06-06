#!/bin/bash
BACKUP_DIR="backup_$(date +%F)"
ARCHIVE="${BACKUP_DIR}.tar.gz"
mkdir -p "$BACKUP_DIR"
COUNT=0
while IFS= read -r file; do
    if [ -n "$file" ]; then
        cp "$file" "$BACKUP_DIR/" && ((COUNT++))
    fi
done < <(find . -name "*.txt")
if [ $COUNT -eq 0 ]; then
    echo "No .txt files found"
    rm -rf "$BACKUP_DIR"
    exit 1
fi
tar -czf "$ARCHIVE" "$BACKUP_DIR" || { echo "Failed to create archive"; exit 1; }
rm -rf "$BACKUP_DIR"
echo "Бэкап завершён: $COUNT файлов"
exit 0
