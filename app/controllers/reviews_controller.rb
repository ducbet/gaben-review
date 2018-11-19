class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :destroy]

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

  def destroy
    @review.destroy unless @review.nil?
    @comment = Review.new
    @game = @review.game
    @reviews = @game.reviews
  end

  private

  def find_review
    @review = Review.find_by id: params[:id]
  end

  def review_params
    params.require(:review).permit :content, :user_id, :game_id, :score
  end
end
