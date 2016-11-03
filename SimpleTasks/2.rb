# Дан целочисленный массив. Переставить в обратном порядке элементы массива,
#    расположенные между его минимальным и максимальным элементами.

array = [ 1, 3, 2, 5, 4 ]
index_min = array.find_index(array.min)
index_max = array.find_index(array.max)

new_array = array[index_min..index_max]
new_array.pop
new_array.shift
new_array.reverse!

start_index = [index_min, index_max].min + 1
array[start_index, new_array.length] = new_array

p array