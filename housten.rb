class Housten

  attr_accessor :robot_lost

  def initialize(robot)
    @robot = robot
    @robot_lost = false
  end

  def command_robot(instructions, planet)
    instructions.each_char do |instruction|
      @robot.drive(instruction)
      @robot_lost = true if planet.robot_fell_off?(@robot)
    end
  end

end
