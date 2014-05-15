class Robot

  attr_accessor :row, :column

  def initialize(initial_row, initial_column, orientation)
    @row = initial_row
    @column = initial_column
    @orientation = orientation
  end

end
