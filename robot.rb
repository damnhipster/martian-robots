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
      rotate(instruction) if instruction == 'L' || instruction == 'R'
    end
  end

  private

  def rotate(instruction)
    while @compass.first != @orientation do
      rotate_compass_right if instruction == 'R'
      rotate_compass_left if instruction == 'L'
    end
    @orientation = @compass[1] if instruction == 'R'
    @orientation = @compass.last if instruction == 'L'
    reset_compass
  end

  def rotate_compass_right
    @compass.unshift(@compass.pop)
  end

  def rotate_compass_left
    @compass.push(@compass.shift)
  end

  def reset_compass
    @compass = ['North', 'East', 'South', 'West']
  end

end
