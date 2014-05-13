FactoryGirl.define do
  factory :user do
    name 'Steve Martin'
    sequence :email do |e|
      "funny#{e}@comedy.com"
    end
    password 'password'
    password_confirmation 'password'
  end
end
