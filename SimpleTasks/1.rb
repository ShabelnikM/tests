array = [ 1, 2, 3, 4, 5 ]

array.each do |x|
  puts "#{x} is odd" if x.odd?
end

array.each do |x|
  puts "#{x} is even" if x.even?
end
