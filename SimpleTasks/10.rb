# Дан целочисленный массив. Вывести номер первого из тех его элементов,
#     которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1].
#     Если таких элементов нет, то вывести [ ]

array = [7, 2, 3, 4, 1, 3, 10]

# FixME: Переделать. Each + case излишество. Решение имеет одну строку
array.each do |item|
  case
  when item > array[0] && item < array[-1]
    p "Index of A[i]: #{array.find_index(item)}"
    break
  when item == array.last
    p []
  end
end

