require 'open-uri'
require 'json'

module Shop
  def load_json_file(url)
    JSON.parse(open(url).read)
  end
end
