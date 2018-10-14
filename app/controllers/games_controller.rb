class GamesController < ApplicationController
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result.includes(:genres).page(params[:page]).per(3)
  end

  def show
    @game = Game.find_by id: params[:id]
    @reviews = @game.reviews
    @comment = Review.new
  end
end
