require 'spec_helper'
require_relative '../housten'
require_relative '../planet'
require_relative '../robot'

describe Housten, "#command_robot" do

  it "should be able to move robot sequentially" do
    robot = Robot.new(1,1,'North')
    housten = Housten.new(robot)
    housten.command_robot('FRFLF', Planet.new(3,2))
    expect(robot.column).to eq(3)
    expect(robot.row).to eq(2)
    expect(robot.orientation).to eq('North')
  end

end
