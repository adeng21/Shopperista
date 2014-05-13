class Outfit < ActiveRecord::Base
  belongs_to :pant
  belongs_to :shirt
  belongs_to :shoe
  belongs_to :user
end
