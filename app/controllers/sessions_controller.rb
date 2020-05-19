class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenicate, params[:password])
      session[:user_id] = user_id
      redirect_to admin_url
    else 
      redirect_to login_url, alert: 'Invalid username password combination'
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Logged out"
  end
end
