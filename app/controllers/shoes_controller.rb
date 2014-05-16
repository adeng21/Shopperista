class ShoesController < ApplicationController
  def create
    @shoe = Shoe.new(shoe_params)
  end

  private
  def pant_params
    params.require(:shoe).permit(:brand, :style, :url, :image)
  end
end
