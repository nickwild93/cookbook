Создание окружения
```bash
 python.exe -m venv venv
```

Запуск окружения
 ```bash
  .\venv\Scripts\activate
 ```

Установка Django
 ```bash
  pip install django
 ```

Создание проекта
 ```bash
  django-admin startproject <Название_проекта>
 ```

Создание задач
 ```bash
 cd <Название_проекта>
 django-admin.exe startapp tasks
```

Миграция проекта
 ```bash
  py.exe .\manage.py migrate
 ```

Создаем суперпользователя для БД
 ```bash
 python.exe .\manage.py createsuperuser
 Username: <Пользователь>
 Email address: <Не обязательно> 
 Password: <Пароль>
 Password (again): <Снова пароль>
 This password is too common.
 Bypass password validation and create user anyway? [y/N]: y
```

Запуск сервера
```bash
 python.exe .\manage.py runserver
```

Стандартизация проекта, создаем файл requirements.txt и добавляем в него все необходимые библиотеки (например: django==4.1.5). Устанавлием библтотеки
```bash
 pip install -r .\requirements.txt 
```

```bash

```
