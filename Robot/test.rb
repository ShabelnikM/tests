class RobotTest

  def self.init_table( x = 5, y = 6)
    @col = []
    @row = []
    @table = {}

    n = x - 1
    x.times do
      @col << n
      n = n - 1
    end

    n = y - 1
    y.times do
      @row << n
      n = n - 1
    end

    p @table = {col: @col, row: @row}
  end
end
