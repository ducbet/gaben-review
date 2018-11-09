class RepliesController < ApplicationController
  before_action :find_reply, only: [:edit, :destroy]

  def create
    @reply = Reply.new reply_params
    if @reply.save
      @comment = Review.new
      @new_reply = Review.new
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js { render "create_failed" }
      end
    end
  end

  def destroy
    @reply.destroy unless @reply.nil?
  end

  private

  def find_reply
    @reply = Reply.find_by id: params[:id]
  end

  def reply_params
    params.require(:reply).permit :content, :user_id, :review_id
  end
end
