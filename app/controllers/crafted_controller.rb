class CraftedController < ApplicationController
  def index
    @beers = Beer.all
  end
end
