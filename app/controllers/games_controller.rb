class GamesController < ApplicationController
  def index
    @games = @q.result.includes(:genres).paginate(:page => params[:page], :per_page => 9)
    @genres = Genre.all.map(&:genre)
  end

  def show
    @game = Game.find_by id: params[:id]
    if current_user.nil?
      @my_review = nil
      @other_reviews = @game.reviews
    else
      @my_review = @game.reviews.find_by user_id: current_user.id
      @other_reviews = @game.reviews.all_except current_user
    end
    @comment = unless current_user.nil?
                  @my_review || Review.new
               else
                  Review.new
               end
    @new_reply = Reply.new
  end

  private

  def game_params
    params.require(:game).permit :name, :details, :price, :picture, screenshots_attributes: [:id, :game_id, :picture]
  end
end
