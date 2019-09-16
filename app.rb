require_relative 'config/environment'

class App < Sinatra::Base

    # displays form
    get '/' do 
        erb :user_input
    end

    # receives data from form
    post '/piglatinize' do 
        @user_phrase = params[:user_phrase]
        piglatin = PigLatinizer.new
        @piglatin_phrase = piglatin.piglatinize(@user_phrase)
        erb :piglatin
    end

end