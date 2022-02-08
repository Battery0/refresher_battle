require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/player'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    p $player_1_name
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    @player_2_hitpoints = $player_2.hitpoints

    @p1_attack_p2 = true if session[:p1_attack_p2] == "true"
    session[:p1_attack_p2] = nil

    erb(:play)
  end

  post '/attack' do
    session[:p1_attack_p2] = params[:p1_attack_p2]
    redirect to ('/play')
  end

end
