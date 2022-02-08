require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    #our routes go here

    get '/' do
        'Testing Infrastructure Working!'
    end


    #DONT CHANGE THE LINE BELOW
    run! if app_file == $0

end

