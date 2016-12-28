def circle(radius)
  @radius = radius
  (-@radius..@radius).each do |x|
    (-@radius..@radius).each do |y|
      print Math.hypot(x, y).round == @radius ? '#' : ' '
    end
    puts
  end
end

circle(15)
