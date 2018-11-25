class Admin::UsersController < ApplicationController
  def index
    @users = User.except_admin
  end

  def update
    respond_to do |format|
      @user = User.find_by id: params[:id]
      if @user&.maker?
        @user.member!
        format.js{render "admin/users/degrade"}
      elsif @user&.member?
        @user.maker!
        format.js{render "admin/users/upgrade"}
      else
        format.html
      end
    end
  end
end
