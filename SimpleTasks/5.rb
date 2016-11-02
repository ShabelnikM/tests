# Дан целочисленный массив. Найти количество нечетных элементов.

array = [ 1, 2, 3, 4, 5 ]

odd = array.count {|x| x.odd? }
p "Count of even numbers in array: #{odd}"