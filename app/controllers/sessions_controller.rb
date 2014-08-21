class SessionsController < ApplicationController

  # def create
  #   @oauth = Koala::Facebook::OAuth.new(ENV["FACEBOOK_ID"], ENV["FACEBOOK_SECRET"], 'http://localhost:3000/auth/facebook/callback')
  # # binding.pry
  # end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = env["omniauth.auth"]["uid"]
    binding.pry
    redirect_to @user
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
