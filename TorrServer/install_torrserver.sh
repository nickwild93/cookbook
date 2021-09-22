#!/bin/bash
wget https://github.com/YouROK/TorrServer/releases/download/MatriX.106/TorrServer-linux-amd64
mkdir /opt/torrserver
mv TorrServer-linux-amd64 /opt/torrserver
chmod +x /opt/torrserver/TorrServer-linux-amd64
apt -y install systemd-container
wget https://github.com/nickwild93/cookbook/blob/main/TorrServer/torrserver.service -O /etc/systemd/system/
systemctl daemon-reload
systemctl start torrserver
systemctl enable torrserver
systemctl status torrserver
http://localhost:8090
