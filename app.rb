require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    #our routes go here

    get '/' do
        erb(:index)
    end

    post '/names' do
        @player1 = params[:player1]
        @player2 = params[:player2]
        erb(:names)
    end


    #DONT CHANGE THE LINE BELOW
    run! if app_file == $0

end


