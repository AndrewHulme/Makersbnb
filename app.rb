require 'sinatra/base'
require './lib/space'

class MakersBnB < Sinatra::Base

enable :sessions

  get '/' do
    'Hello World'
  end

  get '/users/new' do 
    erb :"signup"
  end

  post '/sign-up-user' do
    User.create(real_name: params['name'], email: params['email'], password: params['password'])
    redirect '/login'
  end

  get '/login' do
    
    erb :"login"
  end

  post '/log-in-details' do 
    user = User.login(email: params['email'], password: params['password'])
    session[:user] = user
    redirect '/welcome'
  end

  get '/welcome' do 
    @user = session[:user]
    erb :"welcome"
  end

  get '/makersbnb' do
    @space = Space.view_spaces
    erb :'makersbnb/space'
  end

  get '/makersbnb/add-space' do
    erb :'makersbnb/add_space'
  end

  post '/makersbnb' do
    Space.add_space(user_id: 1, space_name: params[:name], description: params[:description], price: params[:price], dates_available: params[:dates_available])
    redirect '/makersbnb'
  end

  run! if app_file == $0
end
