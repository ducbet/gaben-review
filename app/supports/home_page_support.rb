class HomePageSupport
  attr_accessor :game_popular, :game_new, :game_best_sellers, :game_recommend,
                :portfolio

  def initialize game_popular, game_new, game_best_sellers, game_recommend, portfolio
    @game_popular = game_popular
    @game_new = game_new
    @game_best_sellers = game_best_sellers
    @game_recommend = game_recommend
    @portfolio = portfolio
  end
end
