class Robot

  attr_accessor :row, :column, :orientation

  def initialize(initial_row, initial_column, initial_orientation)
    @row = initial_row
    @column = initial_column
    @orientation = initial_orientation
    @compass = ['North', 'East', 'South', 'West']
  end

  def drive(instructions)
    instructions.each_char do |instruction|
      rotate_left if instruction == 'L'
      rotate_right if instruction == 'R'
    end
  end

  private

  def rotate_right
    while @compass.first != @orientation do
      @compass.unshift(@compass.pop)
    end
    @orientation = @compass[1]
    reset_compass
  end

  def rotate_left
    while @compass.first != @orientation do
      @compass.push(@compass.shift)
    end
    @orientation = @compass.last
    reset_compass
  end

  def reset_compass
    @compass = ['North', 'East', 'South', 'West']
  end

end
