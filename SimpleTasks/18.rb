# 1) вывести унникальный сортированый массив положительных чисел из всех значений хешей
#    2) найти в массиве первый всртечный хеш, где a < 0
#    3) преобразовать исходный массив в хеш вида {a: сумма всех значений a, b: сумма всех значений b}
#    4) отсортировать весь массив по значениям b.
#    5) выбрать все элементы массива у которых b делится на 2 без остатка
#    6) проверить есть ли в массиве элемент у которого все значения < 0

array = [{a: 1, b: 4}, {a: 33, b: -8}, {a: -22, b: 23}, {a: -2.01, b: 77}, {a: 15, b: 13}]

positive_array = []
new_array = array.map { |hash| hash.values }
new_array.each { |item| item.each { |sub| positive_array << sub if sub > 0 } }
p positive_array

p array.find { |hash| hash[:a] < 0 }

obj ={
    a: array.map{|hash| hash[:a]}.inject(0){|sum, item| sum += item},
    b: array.map{|hash| hash[:b]}.inject(0){|sum, item| sum += item}
  }
p obj

p array.sort_by { |hash| hash[:b] }

p array.select { |hash| hash[:b].even? }

p array.any? { |hash| hash[:a] < 0 && hash[:b] < 0 }