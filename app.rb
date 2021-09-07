require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        set :session_secret, 'flatiron'
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end