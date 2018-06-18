class UsersController < ApplicationController
  def index
    @username = User.find(session[:user_id].to_i)
  end

  def new
    @user = User.new
  end

  def create
    if params[:password] != params[:password_confirmation]
      redirect_to users_signup_path
    else
      user = User.create(user_params)
      session[:user_id] = user.id
      redirect_to users_signup_path
    end

      # FIX THIS METHOD
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
