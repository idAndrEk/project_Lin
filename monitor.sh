#!/bin/bash
if [ $(ps aux | grep nginx | grep -v grep | wc -l) -eq 0 ]; then
    echo "Nginx не запущен: $(date)" >> ~/monitor.log
else
    echo "Nginx работает: $(date)" >> ~/monitor.log
fi
