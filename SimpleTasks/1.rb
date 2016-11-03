# Дан целочисленный массив. Необходимо вывести вначале
#    его элементы с четными индексами, а затем - с нечетными

array = [ 0, 1, 0, 3, 4, 8, 0]

array.each_with_index { |item, index|  p "#{item} is even" if index.even? }
array.each_with_index { |item, index|  p "#{item} is odd" if index.odd? }


