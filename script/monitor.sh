#!/bin/bash
LOG=/home/user/portfolio/web_server/logs/monitor.log
  if ! pgrep nginx > /dev/null; then
      sudo systemctl start nginx
      echo "$(date): Nginx перезапущен" >> $LOG
  else
      echo "$(date): Nginx работает" >> $LOG
  fi

