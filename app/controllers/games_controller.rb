class GamesController < ApplicationController
  def index
    @games = Game.page(params[:page]).per(3)
  end

  def show
    @game = Game.find_by id: params[:id]
  end
end
