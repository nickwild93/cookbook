apt update
apt upgrade

apt install gnupg
apt install apache2 php php-mysql php-mysqlnd php-ldap php-bcmath php-mbstring php-gd php-pdo php-xml libapache2-mod-php

systemctl status apache2

[Link for MySQL](https://dev.mysql.com/downloads/repo/apt/)

wget https://dev.mysql.com/get/mysql-apt-config_0.8.23-1_all.deb
dpkg -i mysql-apt-config_0.8.23-1_all.deb

apt update
apt -y install mysql-server

systemctl status 

mysql -u root -p

create database zabbix character set utf8mb4 collate utf8mb4_bin;
create user zabbix@localhost identified by 'zabbixpw';
grant all privileges on zabbix.* to zabbix@localhost;
flush privileges;
quit;

[Link for Zabbix] (https://www.zabbix.com/ru/download?zabbix=6.0&os_distribution=debian&os_version=11_bullseye&db=mysql&ws=apache)
wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-3+debian11_all.deb
dpkg -i zabbix-release_6.0-3+debian11_all.deb
apt update 

apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent 

zcat /usr/share/doc/zabbix-sql-scripts/mysql/server.sql.gz | mysql -uzabbix -p zabbix 
      ### password required: zabbixpw###   


nano /etc/zabbix/zabbix_server.conf

    DBHost=localhost
    DBName=zabbix
    DBUser=zabbix
    DBPassword=zabbixpw
    
nano /etc/zabbix/apache.conf

    php_value date.timezone Europe/Budapest

systemctl restart apache2
reload

systemctl start zabbix-server zabbix-agent apache2
systemctl enable zabbix-server zabbix-agent apache2

systemctl status zabbix-server

systemctl status zabbix-agent

apt install  ufw

ufw allow 80/tcp

ufw allow 443/tcp

ufw allow 10050/tcp

ufw allow 10051/tcp

ufw reload
