require 'open-uri'
require 'json'


module Shop
  def load_json_file(api)
    JSON.parse(open(api).read)
  end

  def build_product_struct(item)
    struct = []
    products = JSON.parse(open(item).read)["products"]
    products.each do |product|
      brand = product["brand"]["name"]
      style = product["unbrandedName"]
      url = product["clickUrl"]
      image = product["image"]["sizes"]["Original"]["url"]

      struct << {brand: brand, style: style, url: url, image: image}
    end
  end

  def load_product_url
    product_url =
    product = load_json_file(product)["products"]
    product.each do |prod|
      prod["clickUrl"]
    end
  end

  def load_product_brand_name
  end

  def load_product_style_type
  end
end
