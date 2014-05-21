# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :outfit do
    name 'that hotness'
    pant
    shoe
    shirt
    user
  end
end
