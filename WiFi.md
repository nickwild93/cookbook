Cписок всех профилей WiFi CMD:
```cmd
netsh wlan show profile
```
Пароли:
```cmd
netsh wlan show profile <WiFi-name> key=clear
```
Как найти пароль Wi-Fi через локальную сеть:
```cmd
mode con lines=60
netsh wlan show profile name="<LAN Name>" key=clear
```
Как проверить пароли Wi-Fi всех устройств одновременно:
```cmd
for /f "skip=9 tokens=1,2 delims=:" %i in ('netsh wlan show profiles') do @echo %j | findstr -i -v echo | netsh wlan show profiles %j key=clear
```
[Источник](https://bookflow.ru/kak-najti-parol-wi-fi-ot-vseh-podklyuchennyh-setej-s-pomoshhyu-cmd/)
