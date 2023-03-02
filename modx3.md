# Ошибка с Gallery MODx 3.0.3

>[2023-03-02 14:22:46] (ERROR @ C:\OpenServer\domains\<site>\core\vendor\xpdo\xpdo\src\xPDO\Om\xPDOObject.php : 227) Error 42000 executing statement: 
>>Array
>>>(
>>>>    [0] => 42000
>>>>    [1] => 1064
>>>>    [2] => You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER BY AlbumItems.rank ASC LIMIT 20' at line 4
>>>)

# Решение: 
C:\OpenServer\domains\<site>\core\components\gallery\processors\mgr\item\getlist.class.php

Было:
```php
  ...
  public $defaultSortField = 'rank';
  ...
  $c->groupBy('rank');
```

Стало:
```php
  ...
  public $defaultSortField = 'AlbumItems.rank';
  ...
  $c->groupBy('AlbumItems.rank');
  ...
```
