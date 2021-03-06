class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate params[:session][:password]
      log_in user
      remember_user user
      redirect_to user
    else
      flash.now[:danger] = t "flash.login_fail"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private
  def remember_user user
    params[:session][:remember_me] == "1" ? remember(user) : forget(user)
  end
end
