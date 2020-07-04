class Admin::GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new genre_params
    if @genre.save
      flash[:success] = t "flash.add_genre_success"
      redirect_to root_url
    else
      flash[:danger] = t "flash.add_genre_failed"
      render :new
    end
  end

  private

  def genre_params
    params.require(:genre).permit :genre
  end
end
