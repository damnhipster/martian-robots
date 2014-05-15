require 'spec_helper'
require_relative '../planet'
require_relative '../robot'

describe Planet, "#robot_fell_off?" do

  it "should return false if robot is on planet" do
    robot = Robot.new(1,1,'East')
    expect(Planet.new(5,3).robot_fell_off?(robot)).to be_false
  end

end
