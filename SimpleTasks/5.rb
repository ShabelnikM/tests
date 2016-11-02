# Дан целочисленный массив. Найти количество нечетных элементов.

array = [ 1, 2, 3, 4, 5 ]

even = array.count {|x| x.even? }
p "Count of even numbers in array: #{even}"