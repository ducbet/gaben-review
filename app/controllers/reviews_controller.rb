class ReviewsController < ApplicationController
  def create
    @review = Review.new review_params
    if @review.save
      @comment = Review.new
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

  def review_params
    params.require(:review).permit :content, :user_id, :game_id
  end
end
