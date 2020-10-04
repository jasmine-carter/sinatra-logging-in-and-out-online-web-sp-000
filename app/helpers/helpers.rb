require 'sinatra/base'

class Helpers

<<<<<<< HEAD
  def self.current_user(session)
    @user = User.find_by(id: session[:user_id])
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
=======
  def self.current_user(session_hash)
    @user = User.find_by(session_hash[:user_id])
  end

  def self.is_logged_in?(session_hash)
    !!session_hash[:user_id]
>>>>>>> c96fc72e2514dd9b8231d9db84f85888bc23598e
  end

end
