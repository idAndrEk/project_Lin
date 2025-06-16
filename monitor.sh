#!/bin/bash
if ! pgrep redis-server > /dev/null; then
    echo "Nginx не запущен: $(date)" >> ~/portfolio/project_Lin/monitor.log
else
    echo "Nginx работает: $(date)" >> ~/portfolio/project_Lin/monitor.log
fi
