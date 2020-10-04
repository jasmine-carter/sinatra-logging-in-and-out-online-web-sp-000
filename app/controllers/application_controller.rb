require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  #find user and send them to their account page, or redirect to error page
  post '/login' do
<<<<<<< HEAD
  #binding.pry
    @user = User.find_by(username: params[:username])
    if @user != nil
        session[:user_id] = @user.id
        redirect '/account'
    else
      erb :error
    end
  end

  get '/account' do
    #binding.pry
    @current_user = User.find_by(id: session[:user_id])
    if @current_user !=nil
      erb :account
    else
      erb :error
    end
=======
    @user = User.find_by(email: params[:email])
    if @user
        session[:user_id] = @user.id
        redirect '/account'
    end
    erb :error
  end

  get '/account' do
    erb :account
>>>>>>> c96fc72e2514dd9b8231d9db84f85888bc23598e
  end

  get '/logout' do
    session.clear
    redirect '/'
  end


end
