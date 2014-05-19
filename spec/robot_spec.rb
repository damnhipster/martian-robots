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

  it "should be able move forward when facing East" do
    robot = Robot.new(1,1,'East')
    robot.drive('F')
    expect(robot.row).to eq(2)
  end

  it "should be able move forward when facing West" do
    robot = Robot.new(2,1,'West')
    robot.drive('F')
    expect(robot.row).to eq(1)
  end

  it "should be able move forward when facing North" do
    robot = Robot.new(1,1,'North')
    robot.drive('F')
    expect(robot.column).to eq(2)
  end

  it "should be able move forward when facing South" do
    robot = Robot.new(1,2,'South')
    robot.drive('F')
    expect(robot.column).to eq(1)
  end

  it "should be able to move sequentially" do
    robot = Robot.new(1,1,'North')
    robot.drive('FRFLF')
    expect(robot.column).to eq(3)
    expect(robot.row).to eq(2)
    expect(robot.orientation).to eq('North')
  end

end
