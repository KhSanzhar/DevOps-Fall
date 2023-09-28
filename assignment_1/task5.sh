[Unit]
Description=Shop application service
After=network.target

[Service]
Type=simple
ExecStart=/mnt/c/Users/Asus/desktop/devops/devops-fall/shop
User=shop
Restart=always

[Install]
WantedBy=multi-user.target