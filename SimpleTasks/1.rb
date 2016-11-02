# Дан целочисленный массив. Необходимо вывести вначале
#    его элементы с четными индексами, а затем - с нечетными

array = [ 0, 0, 0, 0, 0, 0, 0]

array.each_with_index { |item, index|  puts "#{item} is even" if index.even? }

array.each do |x|
  puts "#{x} is odd" if x.odd?
end


