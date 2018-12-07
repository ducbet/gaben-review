class StaticPagesController < ApplicationController
  def home
    @support = HomePageSupport.new get_game_top_rated,
                                  get_game_new,
                                  get_game_best_sellers,
                                  get_game_recommend,
                                  Screenshot.all.sample(12)
  end

  private

  def get_game_top_rated
    Game.top_rated(8)
  end

  def get_game_new
    Game.new_arrivals(8)
  end

  def get_game_best_sellers
    Game.best_sellers(8)
  end

  def get_game_recommend
    Game.all.sample(8)
  end
end
