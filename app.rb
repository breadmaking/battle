require 'sinatra/base'
require 'sinatra/reloader'



class Battle < Sinatra::Base
    enable :sessions

    configure :development do
        register Sinatra::Reloader
    end

    #our routes go here

    get '/' do
        erb(:index)
    end

    post '/names' do
        # print params[:player1]
        # print params[:player2]
        session[:player1] = params[:player1]
        session[:player2] = params[:player2]
        redirect '/play'
    end

    get '/play' do
        @player1 = session[:player1]
        @player2 = session[:player2]
        erb(:play)
    end


    #DONT CHANGE THE LINE BELOW
    run! if app_file == $0

end


