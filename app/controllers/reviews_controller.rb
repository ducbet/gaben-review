class ReviewsController < ApplicationController
  def create
    @review = Review.new review_params
    if @review.save
      @new_reply = Reply.new
      respond_to do |format|
        format.js
      end
    else
      respond_to do |format|
        format.js { render "create_failed" }
      end
    end
  end

  def edit
    @review = Review.find_by id: params[:id]
    @comment = @review
    @new_reply = Reply.new
    @game = @review.game
    @reviews = @game.reviews.all_except(current_user)
  end

  def update
    @review = Review.find_by user_id: params[:review][:user_id], game_id: params[:review][:game_id]
    if @review && @review.update_attributes(review_params)
      @new_reply = Reply.new
      respond_to do |format|
        format.js { render "reviews/create"}
      end
    else
      respond_to do |format|
        format.js { render "create_failed" }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit :content, :user_id, :game_id, :score
  end
end
