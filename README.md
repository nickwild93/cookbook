# library
Ссылки

## Подсветка в bash
Установка

```
    # Задаем приглашение для пользователя и опеределение рута
    wget https://raw.githubusercontent.com/imbicile/shell_colors/master/shell_color
    chmod +x shell_color 
    ./shell_color 
    rm shell_color  
```
Меняем в .bashrc строки

```
    if [ $(id -un) = root ]; then
      PS1="┌ [${BIRed}\u${Color_Off}][${BICyan}\w${Color_Off}]${show_git}\n└─ \$ "
    else
      PS1="┌ [${BIGreen}\u${Color_Off}][${BICyan}\w${Color_Off}]${show_git}\n└─ # "
    fi
```
...

```
    # Алиасы LS
    alias ll='ls -alFh'      # показать скрытые файлы с индикатором
    alias la='ls -Alh'       # показать скрытые файлы
    alias lx='ls -lXBh'      # сортировка по расширению
    alias lk='ls -lSrh'      # сортировка по размеру
    alias lc='ls -lcrh'      # сортировка по времени изменения
    alias lu='ls -lurh'      # сортировка по времени последнего обращения
    alias lr='ls -lRh'       # рекурсивный обход подкаталогов
    alias lt='ls -ltrh'      # сортировка по дате
    alias lm='ls -alh |more' # вывод через 'more'
    alias shutdown='shutdown now'
```
