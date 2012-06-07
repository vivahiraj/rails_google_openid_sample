class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    session[:user_info] = auth["info"]
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_info] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
