require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end
    
    post "/piglatinize" do
        pig = PigLatinizer.new
        @pig_string = pig.piglatinize(params[:user_phrase])
        erb :display
    end
end