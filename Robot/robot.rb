class Robot
  attr_accessor :position_x, :position_y, :direction
  DIRECTION = %w[NORTH EAST SOUTH WEST]

  def place(x, y, f)
    @position_x = x
    @position_y = y
    if DIRECTION.include? f
      @direction = f
    else
      p 'Direction error. Must be only: ' + DIRECTION
    end
  end

  def move
  end

  def left
    if @direction == 'NORTH'
      @direction = 'WEST'
    else
      @direction = DIRECTION[DIRECTION.index(@direction) - 1]
    end
  end

  def right
    if @direction == 'WEST'
      @direction = 'NORTH'
    else
      @direction = DIRECTION[DIRECTION.index(@direction) + 1]
    end
  end

  def report
    p "Position x:#{@position_x}, y:#{@position_y}, direction: #{@direction}"
  end
end

robot = Robot.new
robot.place(1, 2, 'WEST')
robot.report
robot.left
robot.report
robot.left
robot.report
robot.right
robot.report
