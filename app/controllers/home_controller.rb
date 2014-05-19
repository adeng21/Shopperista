class HomeController < ApplicationController

  def index
    @shirts = Shirt.retrieve_mens_shirts
    @pants = Pant.retrieve_mens_pants
    @shoes = Shoe.retrieve_mens_shoes
  end

  def myoutfits
  end

  def new
  end

end
