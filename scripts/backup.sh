#!/bin/bash
SRC=~/portfolio/backup_system/files 
DEST=~/portfolio/backup_system/archive/$(date +%Y-%m-%d)
mkdir -p "$DEST"
cp $SRC/*.txt "$DEST"
COUNT=$(ls "$DEST" | wc -l)
echo "Бэкап завершен: $COUNT файлов"
