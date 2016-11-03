# Ввести натуральное число и напечатать количество вхождений его максимальной цифры в число.
#     Так для числа 77777 ответ будет 5, а для 12321 - ответ равен 1.

p "Please, enter number (exmp. 77777)"
number = gets.chomp
array = number.split("").map(&:to_i)
p "Count of max number #{array.count { |item| item == array.max } }"
