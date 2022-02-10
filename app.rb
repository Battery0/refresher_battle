require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/game'
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
    player_one = Player.new(params[:player1])
    player_two = Player.new(params[:player2])
    $game = Game.new(player_one, player_two)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    @p1_attack_p2 = true if session[:p1_attack_p2] == "true"
    session[:p1_attack_p2] = nil
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    session[:p1_attack_p2] = params[:p1_attack_p2]
    redirect to ('/play')
  end

end
