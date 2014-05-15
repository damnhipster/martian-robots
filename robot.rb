class Robot

  attr_accessor :row, :column, :orientation

  def initialize(initial_row, initial_column, initial_orientation)
    @row = initial_row
    @column = initial_column
    @orientation = initial_orientation
  end

  def drive(instructions)
    instructions.each_char do |instruction|
       @orientation = 'North'
    end
  end

end
