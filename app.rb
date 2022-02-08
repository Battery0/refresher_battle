require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player1]
    session[:player_2_name] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]

    @p1_attack_p2 = true if session[:p1_attack_p2] == "true"
    session[:p1_attack_p2] = nil
    
    erb(:play)
  end

  post '/attack' do
    session[:p1_attack_p2] = params[:p1_attack_p2]
    redirect to ('/play')
  end

end
