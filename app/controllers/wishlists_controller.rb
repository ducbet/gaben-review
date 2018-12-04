class WishlistsController < ApplicationController
  def index
    @games = current_user.games.paginate(:page => params[:page], :per_page => 9)
  end

  def create
    @game = Game.find_by id: params[:game_id]
    @game.wishlists.create user_id: current_user.id
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @relation = Wishlist.find_by id: params[:id]
    if @relation
      @game = @relation.game
      @relation.destroy
      respond_to do |format|
        format.js  { render "create" }
      end
    end
  end
end
