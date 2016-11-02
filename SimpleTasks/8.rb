# Дан целочисленный массив. Преобразовать его,
#    вставив после каждого положительного элемента нулевой элемент.

array = [ -1, -2, 1, 2, 3, 4, 5 ]
new_array = []

array.each do |item|
  new_array << item
  new_array << nil if item > 0
end

p new_array