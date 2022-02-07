require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Testing infrastructure working!"
  end

end
