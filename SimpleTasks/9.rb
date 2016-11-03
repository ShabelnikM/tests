# Дано вещественное число R и массив вещественных чисел.
#    Найти элемент массива, который наиболее близок к данному числу.

R = 3.4
array = [ 1.2 , 2, 3, 3.6, 5 ]

new_array = array.map do |item|
  item -= R
  item.abs
end

p "For #{R} nearest element of array #{array} is #{array[new_array.find_index(new_array.min)]}"


