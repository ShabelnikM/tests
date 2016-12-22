class Robot
  DIRECTION = %w[NORTH EAST SOUTH WEST]

  def place(x, y, f)
    @row = x
    @col = y
    if DIRECTION.include? f
      @direction = f
    else
      p "Direction error. Must be only: #{DIRECTION}"
    end
  end

  def move
    step = feature_move
    @col = step[:y]
    @row = step[:x]
  end

  def feature_move
    maybe_step = {x: @col, y: @row}
    if @direction == 'NORTH'
      maybe_step[:y] = @col + 1
    elsif @direction == 'EAST'
      maybe_step[:x] = @row + 1
    elsif @direction == 'SOUTH'
      maybe_step[:y] = @col - 1
    elsif @direction == 'WEST'
      maybe_step[:x] = @row - 1
    end
    maybe_step
  end

  def left
    @direction = DIRECTION[DIRECTION.index(@direction) - 1]
  end

  def right
    @direction = DIRECTION[DIRECTION.index(@direction) + 1] || 'NORTH'
  end

  def report
    {x: @row, y: @col, f: @direction}
  end
end