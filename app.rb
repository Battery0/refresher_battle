require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello!"
end

get '/secret' do
  "I see dead people"
end

get '/reloader_test' do
  "Sinatra::Reloader works!"
end

get '/cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end
