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
    @p2_attack_p1 = true if session[:p2_attack_p1] == "true"
    session[:p1_attack_p2] = nil
    session[:p2_attack_p1] = nil
    erb(:play)
  end

  post '/attack' do
    @game = $game
    # @game.attack(@game.player_2)
    session[:p1_attack_p2] = params[:p1_attack_p2]
    session[:p2_attack_p1] = params[:p2_attack_p1]
    @game.attack(@game.player_2) if session[:p1_attack_p2] != nil
    @game.attack(@game.player_1) if session[:p2_attack_p1] != nil
    @game.switch_turns
    redirect to ('/play')
  end

end
