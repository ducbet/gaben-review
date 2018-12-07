class GamesController < ApplicationController
  def index
    @games = @q.result.includes(:genres).paginate(:page => params[:page], :per_page => 9)
    @genres = Genre.all.map(&:genre)
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
