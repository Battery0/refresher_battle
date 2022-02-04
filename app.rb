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
  "<div style='border: 3px dashed orange;'>
    <img src='https://i.imgur.com/jFaSxym.png' alt='Cat'>
  </div>"
end
