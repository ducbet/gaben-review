class RepliesController < ApplicationController
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

  private

  def reply_params
    params.require(:reply).permit :content, :user_id, :review_id
  end
end
