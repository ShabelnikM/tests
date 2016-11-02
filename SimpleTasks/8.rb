# Дан целочисленный массив. Преобразовать его,
#    вставив после каждого положительного элемента нулевой элемент.

array = [ -1, -2, 1, 2, 3, 4, 5 ]
new_array = []

array.each do |x|
  new_array << x
  new_array << array.first if x > 0
end

p new_array