require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @session = session #session is the session hash
    erb :index
  end

  post '/checkout' do
    item_to_purchase = params["item"]
    session[item_to_purchase]
  end

end
