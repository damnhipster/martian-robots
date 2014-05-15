class Planet

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end

  def robot_fell_off?(robot)
    return true if robot.row > @rows
    return true if robot.column > @columns
    return false
  end

end
