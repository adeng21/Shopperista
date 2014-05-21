require 'spec_helper'

feature 'User saves an outfit', %q{
  As a signed in User
  I should be able to save an outfit
  so that I can see it again later
} do

  context 'as a signed in user' do

    let(:user) { FactoryGirl.create(:user) }

    before :each do
      sign_in_as(user)
    end

    scenario 'User successfully saves an outfit' do
      outfit_count = Outfit.count
      shirt_count = Shirt.count
      pant_count = Pant.count
      shoe_count = Shoe.count

      visit root_path

      click_on 'Save Outfit'

      expect(page).to have_content 'Outfit Saved'
      expect(Outfit.count).to eq(outfit_count + 1)
      expect(Shirt.count).to eq(shirt_count + 1)
      expect(Pant.count).to eq(pant_count + 1)
      expect(Shoe.count).to eq(shoe_count + 1)
    end
  end
end
