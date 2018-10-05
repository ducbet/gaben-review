class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "flash.welcome"
      redirect_to root_path
    else
      flash[:danger] = t "flash.create_failed"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit :nick_name, :email, :password,
      :password_confirmation
  end
end
