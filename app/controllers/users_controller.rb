class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def show
    @reviews = @user.reviews.page(params[:page]).per(3)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash[:success] = t "flash.welcome"
      redirect_to root_path
    else
      flash[:danger] = t "flash.create_user_failed"
      render :new
    end
  end

  def edit; end

  def update
    if @user.update_attributes user_params
      flash[:success] = t "flash.updated"
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit :nick_name, :email, :password,
      :password_confirmation, :picture
  end

  def correct_user
    redirect_to root_url unless @user.current_user? current_user
  end
end
