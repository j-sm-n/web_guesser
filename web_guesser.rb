require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  check_guess(guess)
  erb :index, :locals => {:secret_number => SECRET_NUMBER, :message => @message, :background_color => @color}
end

def check_guess(guess)
  if guess > SECRET_NUMBER + 5
    @message = "Way too high!"
    @color = "red;"
  elsif guess < SECRET_NUMBER - 5
    @message = "Way too low!"
    @color = "red;"
  elsif guess > SECRET_NUMBER
    @message = "Too high!"
    @color = "#ff9999;"
  elsif guess < SECRET_NUMBER
    @message = "Too low!"
    @color = "#ff9999;"
  else
    @message = "You got it right! The SECRET NUMBER is #{SECRET_NUMBER}"
    @color = "green;"
  end
end
