class StaticPagesController < ApplicationController
  def home
    @support = HomePageSupport.new Game.all.sample(6),
                                    Game.all.sample(8),
                                    Game.all.sample(9),
                                    Game.all.sample(10),
                                    Game.all.sample(12)
  end
end
