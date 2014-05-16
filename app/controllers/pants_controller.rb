class PantsController < ApplicationController
  def create
    @pant = Pant.new(pant_params)
  end

  private
  def pant_params
    params.require(:pant).permit(:brand, :style, :url, :image)
  end
end
