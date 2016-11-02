# Дан дипапазон a..b. Получить массив из чисел,
#     расположенных в этом диапазоне (исключая сами эти числа),
#     в порядке их убывания, а также размер этого массива.

base = (3..10).to_a
base.pop
base.shift

array = base

array_count = array.count
p "Array: #{array}. Count of elements in array: #{array_count}."