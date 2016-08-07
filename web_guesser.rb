require 'sinatra'
require 'sinatra/reloader'

get '/' do
  random_num = rand(100)
  "The SECRET NUMBER is #{random_num}."
end
