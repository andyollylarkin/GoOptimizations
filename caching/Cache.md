# Когда использовать кеш, а когда нет?

## Когда использовать кеш

Кеш целесообразно использовать в случаях, когда:

*   частота доступа к данным высокая
*   данные редко изменяются
*   данные могут быть вычислены заново, но это занимает много времени
*   данные передаются между разными частями системы

## Когда не использовать кеш

Кеш не стоит использовать в случаях, когда:

*   данные часто изменяются
*   данные чувствительны к изменению
*   данные должны быть максимально свежими
*   данные могут быть получены из другого источника с меньшими затратами

## Общие правила

*   кеш использовать только если он может ускорить работу системы
*   кеш использовать только если он может уменьшить количество запросов к базе данных
*   кеш использовать только если он может уменьшить количество передачи данных между частями системы
