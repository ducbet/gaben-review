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
                  @reviews.find_by(user_id: current_user.id)
               else
                  Review.new
               end
    @new_reply = Reply.new
  end

  def new
    @game = Game.new
    @genres = Genre.all_genre
  end

  def create
    @game = Game.new game_params
    if @game.save
      unless params[:screenshots].nil?
        params[:screenshots]['picture'].each do |picture|
          @game.screenshots.create!(picture: picture)
        end
      end
      unless params[:genre].nil?
        genres = Genre.all_genre
        params[:genre].each do |genre, isChecked|
          if isChecked.to_i == 1
            @game.genres.create!(genre: genre)
          end
        end
      end
      flash[:success] = t "flash.add_game_success"
      redirect_to @game
    else
      @genres = Genre.all_genre
      flash[:danger] = t "flash.add_game_failed"
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit :name, :details, :price, :picture, screenshots_attributes: [:id, :game_id, :picture]
  end
end
