require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end

    configure do
        enable :sessions
        set :session_secret, "iamsecrettotheoutsideworld"
    end
end