# Исправление проблемы ввода заглавных букв в Powershell
1. Запуск PS с правами администратора
2. Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
3. Remove-Module PSReadLine
4. Exit
5. Затем удаляем папку C:\Program Files\WindowsPowerShell\Modules\PSReadLine и устанавливаем модуль ещё раз.
6. Запуск PS с правами администратора
7. Install-Module PSReadLine
[Источник](http://danshin.ms/PSReadLine-problem/)
[Источник](https://stackoverflow.com/questions/41117421/ps1-cannot-be-loaded-because-running-scripts-is-disabled-on-this-system)
# PowerShell не отображает русский язык 
1. Щелкните правой клавишей мыши по заголовку окна PowerShell;
2. Выберите Свойства;
3. Переключитесь на вкладку Шрифты;
4. Выберите шрифт Consolas.
[Источник](https://mhelp.pro/ru/powershell-ne-otobrazhayet-russkiy-yazyk/)
