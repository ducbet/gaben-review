class Admin::GamesController < ApplicationController
  before_action :admin_required

  def new
    @game = Game.new
    @genres = Genre.all.map(&:genre)
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
        genres = Genre.all.map(&:genre)
        params[:genre].each do |genre, isChecked|
          if isChecked.to_i == 1
            g = Genre.find_by genre: genre
            @game.game_genres.create!(genre_id: g.id)
          end
        end
      end
      flash[:success] = t "flash.add_game_success"
      redirect_to @game
    else
      @genres = Genre.all.map(&:genre)
      flash[:danger] = t "flash.add_game_failed"
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit :name, :details, :price, :picture, screenshots_attributes: [:id, :game_id, :picture]
  end

  def admin_required
    return if current_user && current_user.admin?
    redirect_to root_url
  end
end
