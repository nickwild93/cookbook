#!/bin/bash
wget https://github.com/YouROK/TorrServer/releases/download/MatriX.117/TorrServer-linux-amd64
mkdir /opt/torrserver
mv TorrServer-linux-amd64 /opt/torrserver
chmod +x /opt/torrserver/TorrServer-linux-amd64
apt -y install systemd-container
wget https://raw.githubusercontent.com/nickwild93/cookbook/main/TorrServer/torrserver.service -O /etc/systemd/system/
systemctl daemon-reload
systemctl start torrserver
systemctl enable torrserver
systemctl status torrserver
http://localhost:8090
