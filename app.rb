require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @text = params[:user_phrase]
        pl = PigLatinizer.new
        # binding.pry
        @result = pl.piglatinize(@text)
        #binding.pry
        erb :result
    end

end