require 'spec_helper'

feature 'an anonymous user randomly generates a new outfit', %Q{
  As an unauthenticated user
  I want to generate a random outfit
  So that I can view different arrangements of shirt, pants, and shoes
} do

  # ACCEPTANCE CRITERIA
  # I can view a randomly generated outfit
  # The outfit simultaneously updates with new shirt, pants, and shoes

  scenario 'user can generate a new outfit' do
    visit root_path
    shirt_image =
    pant_image =
    shoe_image =

    expect(page)
    click_on 'Randomizer'

    shirt_image_2 =
    pant_image_2 =
    shoe_image_2 =

  end
end
