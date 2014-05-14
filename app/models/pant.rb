require 'open-uri'
require 'json'
require "#{Rails.root}/lib/modules/shop.rb"

class Pant < ActiveRecord::Base
  has_many :outfits
  PANTS = "http://api.shopstyle.com/api/v2/products?pid=uid4976-25022176-34&cat=mens-pants&limit=100"

  include Shop

  def retrieve_mens_pants
    load_json_file(PANTS)
  end

  def get_pant_url

  end

  def get_brand_name

  end

  def get_pant_style

  end
end
