class Robot

  attr_accessor :row, :column, :orientation

  def initialize(initial_row, initial_column, initial_orientation)
    @row = initial_row
    @column = initial_column
    @orientation = initial_orientation
    @compass = ['North', 'East', 'South', 'West']
  end

  def drive(instruction)
    move_forward if instruction == 'F'
    rotate(instruction) if instruction == 'L' || instruction == 'R'
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

  def move_forward
    @column = (@column - 1) if @orientation == 'South'
    @column = (@column + 1) if @orientation == 'North'
    @row = (@row - 1) if @orientation == 'West'
    @row = (@row + 1) if @orientation == 'East'
  end

  def reset_compass
    @compass = ['North', 'East', 'South', 'West']
  end

end
