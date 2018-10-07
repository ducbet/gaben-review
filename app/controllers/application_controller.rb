class ApplicationController < ActionController::Base
  before_action :set_raven_context

  private

  def set_raven_context
    Raven.user_context(id: session[:current_user_id]) # or anything else in session
    Raven.extra_context(params: params.to_unsafe_h, url: request.url)
  end

  def find_user
   @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "flash.no_user"
    redirect_to root_url
  end
end
