#!/bin/bash

ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa

ssh-copy-id -i ~/.ssh/id_rsa.pub kasper@172.16.33.249

ssh kasper@172.16.33.249 "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config"
ssh kasper@172.16.33.249 "sudo systemctl restart sshd"
ssh kasper@172.16.33.249 