require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  erb :roam, locals: {
    planet: params['planet-size'],
    location: params['robot-location'],
    orientation: params['robot-orientation'],
  }
end

