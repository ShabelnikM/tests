# Дан целочисленный массив и число К. Если существует элемент,
#    меньший К, то вывести true; в противном случае вывести false.

array = [ 1, 2, 3, 4, 5 ]
K = 2

p array.min < K
p !array.detect{ |item| item < K }.nil?
p !array.find{ |item| item < K }.nil?
p array.any?{ |item| item < K }