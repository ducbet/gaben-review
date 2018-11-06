class GamesController < ApplicationController
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result.includes(:genres).page(params[:page]).per(3)
    @genres = Genre.all_genre
  end

  def show
    @game = Game.find_by id: params[:id]
    @reviews = @game.reviews
    @comment = unless current_user.nil?
                  @reviews.find_by(user_id: current_user.id) || Review.new
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
