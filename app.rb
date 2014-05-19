require 'sinatra'
require_relative 'planet'
require_relative 'robot'
require_relative 'housten'

get '/' do
  erb :index
end

post '/' do
  @robot = Robot.new(initial_row, initial_column, initial_orientation)
  @planet = Planet.new(5,3)
  @housten = Housten.new(@robot)
  @housten.command_robot(params['instruction'], @planet)
  erb :roam, locals: {
    planet: params['planet-size'],
    initial_location: params['robot-location'],
    initial_orientation: initial_orientation,
    location: "#{ @robot.row }, #{ @robot.column }",
    orientation: @robot.orientation,
    lost: @housten.robot_lost
  }
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
