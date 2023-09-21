# Сборка autoit на Python
```Python
pyinstaller --hidden-import=autoit --add-data="C:\Python\lib\site-packages\autoit\autoit.pyd;autoit" --onefile run.py
```
