class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    Beer.create(beer_params)
    redirect_to root_path
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brewery, :description)
  end

end
