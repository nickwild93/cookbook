Создание окружения
```shell
 python.exe -m venv venv
```
Запуск окружения
 ```shell
  .\venv\Scripts\activate
 ```
 Установка Django
 ```shell
  pip install django
 ```
 Создание проекта
 ```shell
  django-admin startproject <Название_проекта>
 ```
 Создание задач
 ```shell
 cd <Название_проекта>
 django-admin.exe startapp tasks
```
 Миграция проекта
 ```shell
  py.exe .\manage.py migrate
 ```
 Создаем суперпользователя для БД
 ```shell
 python.exe .\manage.py createsuperuser
 Username: <Пользователь>
 Email address: <Не обязательно> 
 Password: <Пароль>
 Password (again): <Снова пароль>
 This password is too common.
 Bypass password validation and create user anyway? [y/N]: y
```
Запуск сервера
```shell
 python.exe .\manage.py runserver
```
