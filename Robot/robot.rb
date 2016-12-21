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
    @direction = DIRECTION[DIRECTION.index(@direction) - 1]
  end

  def right
    @direction = DIRECTION[DIRECTION.index(@direction) + 1] || 'NORTH'
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
