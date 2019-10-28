require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_text = PigLatinizer.new
        @user_text.text = params[:user_phrase]
        @text = @user_text.text

        erb :piglatinize
    end

end