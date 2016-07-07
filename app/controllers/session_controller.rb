class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Something wrong with your username/password or something"
      render :new
    end
  end

  def delete
    session.delete :user_id
    redirect_to root_path
  end
end
