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

get '/random-cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  @cat_name = params[:cat_name]
  @is_cat_cute = params[:cute]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end