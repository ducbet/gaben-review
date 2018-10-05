class GamesController < ApplicationController
  def index
    @games = Game.page(params[:page]).per(3)
  end
end
