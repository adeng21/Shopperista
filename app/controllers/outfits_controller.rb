class OutfitsController < ApplicationController

  before_filter :authenticate_user!, only: [:new, :create]

  def index
    @shirts = Shirt.retrieve_mens_shirts
    @pants = Pant.retrieve_mens_pants
    @shoes = Shoe.retrieve_mens_shoes

    @shirt = Shirt.new
    @pant = Pant.new
    @shoe = Shoe.new
    @outfit = Outfit.new
  end

  def create
    @shirt.new
    @pant.new
    @shoe.new

    @outfit.new
  end
end
