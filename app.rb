require 'sinatra'
require_relative 'planet'
require_relative 'robot'

get '/' do
  erb :index
end

post '/' do
  @robot = Robot.new(initial_row, initial_column, initial_orientation)
  @planet = Planet.new(3,5)
  @robot.drive(params['instruction'])
  erb :roam, locals: {
    planet: params['planet-size'],
    initial_location: params['robot-location'],
    initial_orientation: initial_orientation,
    location: "#{ @robot.row }, #{ @robot.column }",
    orientation: @robot.orientation,
    lost: robot_lost?
  }
end

def robot_lost?
  return true if @planet.robot_fell_off?(@robot)
end

def initial_row
  params['robot-location'].split(',').first.to_i
end

def initial_column
  params['robot-location'].split(',')[1].strip.to_i
end

def initial_orientation
  params['robot-orientation']
end
