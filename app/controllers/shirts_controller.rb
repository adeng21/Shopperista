class ShirtsController < ApplicationController
  def create
    @shirt = Shirt.new(shirt_params)
  end

  private
  def shirt_params
    params.require(:shirt).permit(:brand, :style, :url, :image)
  end
end
