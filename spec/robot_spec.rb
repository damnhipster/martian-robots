require 'spec_helper'
require_relative '../robot'

describe Robot, "#drive" do

  it "should be able to turn left" do
    robot = Robot.new(1,1,'East')
    robot.drive('L')
    expect(robot.orientation).to eq('North')
  end

  it "should be able to turn right" do
    robot = Robot.new(1,1,'East')
    robot.drive('R')
    expect(robot.orientation).to eq('South')
  end

end
