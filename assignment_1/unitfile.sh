#!/bin/bash

UNIT_FILE="/etc/systemd/system/myapp.service"

# Create the unit file
sudo tee "$UNIT_FILE" > /dev/null <<EOL
[Unit]
Description=My Application
After=network.target

[Service]
Type=simple
User=only-exe-user
WorkingDirectory=/mnt/c/Users/User/Desktop/devops/site/DevOps-Fall/shop
ExecStart=/mnt/c/Users/User/Desktop/devops/start_myapp.sh
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOL
sudo useradd only-exe-user -d /mnt/c/Users/User/Desktop/devops/site/DevOps-Fall/shop -s /sbin/nologin
sudo chown -R only-exe-user:only-exe-user /mnt/c/Users/User/Desktop/devops/site/DevOps-Fall/shop
sudo systemctl enable myapp.service
sudo systemctl start myapp.service