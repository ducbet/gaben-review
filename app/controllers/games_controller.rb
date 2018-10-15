class GamesController < ApplicationController
  def index
    @q = Game.ransack(params[:q])
    @games = @q.result.includes(:genres).page(params[:page]).per(3)
    @genres = Genre.genre_uniq
  end

  def show
    @game = Game.find_by id: params[:id]
    @reviews = @game.reviews
    @comment = Review.new
    @new_reply = Reply.new
  end

  def new
    @game = Game.new
    @genres = Genre.genre_uniq
  end

  def create
    @game = Game.new game_params
    if @game.save
      unless params[:screenshots].nil?
        params[:screenshots]['picture'].each do |picture|
          @screenshots = @game.screenshots.create!(:picture => picture)
        end
      end
      flash[:success] = t "flash.add_game_success"
      redirect_to @game
    else
      flash[:danger] = t "flash.add_game_failed"
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit :name, :details, :price, :picture, screenshots_attributes: [:id, :game_id, :picture]
  end
end
