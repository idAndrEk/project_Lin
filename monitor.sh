#!/bin/bash
if [ $(ps aux | grep nginx | grep -v grep | wc -l) -eq 0 ]; then
    echo "Nginx не запущен: $(date)" >> ~/portfolio/project_Lin/monitor.log
else
    echo "Nginx работает: $(date)" >> ~/portfolio/project_Lin/monitor.log
fi
