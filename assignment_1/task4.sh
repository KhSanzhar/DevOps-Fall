/home/logs/myapp.log {
    rotate 3
    size 1M
    compress
    missingok
    notifempty
    create 0640 only-exe-user only-exe-group
    postrotate
        echo "$(date '+%Y-%m-%d %H:%M:%S'): Log rotation completed" >> /home/log_rotates.log
    endscript
}


