require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.game= Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/check'do
  @game = Game.game
  if @game.lose?
    redirect '/lose'
  else
  redirect '/play'
  end
  end

  get '/lose' do
    @game = Game.game
    erb :lose
  end

  get '/play' do
    @game = Game.game
    erb :play
  end

  get '/attack' do
    @game = Game.game
    @game.attack(@game.player_2)
    erb :attack

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
