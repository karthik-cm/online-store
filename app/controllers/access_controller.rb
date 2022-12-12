class AccessController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart

  def new
    if session[:user_id]
      redirect_to admin_url, notice: "Already Logged in"
      return
    end

  end

  def create
    username = params[:name]
    password = params[:password]

    user = User.find_by(name: params[:name])

    if user.name == username and user.password_digest == password
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to shopper_url, notice: "Logged out"
  end
end
