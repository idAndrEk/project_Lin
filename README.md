  Web Server with Monitoring
  Nginx-сервер с автоматическим мониторингом состояния.

  Установка
  sudo apt install nginx
  chmod +x scripts/monitor.sh

  Использование
  - Скопируйте `site/` в `/home/user/portfolio/web_server/site`.
  - Настройте Nginx: `/etc/nginx/sites-available/web_server`.
  - Запустите мониторинг: `crontab -e`.

  Логи
  Логи мониторинга: `logs/monitor.log`.
