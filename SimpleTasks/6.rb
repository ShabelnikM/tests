# Дан целочисленный массив. Найти все нечетные элементы.

array = [ 1, 2, 3, 4, 5 ]

odd = array.select { |x| x.odd? }
p "Odd elements of array: #{odd}"