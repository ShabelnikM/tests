# Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.

array = [-1, 2, -3, 4, -5, 6]

result = []
array.each_slice(2) { |item|  result << (item.first < 0 && item.last > 0 || item.first > 0 && item.last < 0)}
p "true" unless result.any? {|item| item == false }
