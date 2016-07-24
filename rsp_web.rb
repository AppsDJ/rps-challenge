require 'sinatra/base'

class RSPWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    $player_name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end