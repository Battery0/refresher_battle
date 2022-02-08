require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/player'
require_relative './lib/game'

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
    $new_game = Game.new
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name

    @player_2_hitpoints = $player_2.health

    @p1_attack_p2 = true if session[:p1_attack_p2] == "true"
    session[:p1_attack_p2] = nil

    erb(:play)
  end

  post '/attack' do
    new_game = Game.new.attack($player_2)
    session[:p1_attack_p2] = params[:p1_attack_p2]
    redirect to ('/play')
  end

end
