require 'json'

class Pant < ActiveRecord::Base
  has_many :outfits
  PANTS = "http://api.shopstyle.com/api/v2/products?pid=uid4976-25022176-34&cat=mens-pants&limit=50"

  def self.retrieve_mens_pants
    pants = []
    products = JSON.parse(open(PANTS).read)["products"]

    products.each do |product|
      if product["brand"] != nil
        brand = product["brand"]["name"]
      else
        brand = ""
      end

      if product["unbrandedName"] != nil
        style = product["unbrandedName"]
      else
        style = ""
      end

      if product["clickUrl"] != nil
        url = product["clickUrl"]
      else
        url = ""
      end

      if product["image"] != nil
        image = product["image"]["sizes"]["Original"]["url"]
      else
        url = ""
      end

      pants << Pant.new(brand: brand, style: style, url: url, image: image)
    end
    return pants
  end
end
