require 'spec_helper'

feature 'authenticated user has a personal profile page', %Q{
  As an authorized user
  I want to have my own profile page
  So that I can keep track of my outfits
} do

#ACCEPTANCE CRITERIA
#An authenticated user has their own profile page
#Each profile page shows the outfits saved by the user

  scenario 'user signs in and views his profile page' do
    user = FactoryGirl.create(:user)
    sign_in_as_user(user) #pending authentication helper
    click_on 'My Outfits'

    expect(current_path).to eql(profile_path)
  end

  scenario 'unsigned in user does not have access to a profile page' do
    visit root_path

    expect(page).to_not have_content('My Outfits')
  end

  scenario 'authenticated user can view saved outfits on profile page' do
    user = FactoryGirl.create(:user)
    outfit = FactoryGirl.create(:outfit, user: user)
    sign_in_as_user(user)
    click_on 'My Outfits'

    page.find('#shirt')['src'].should_not be_blank
    page.find('#pant')['src'].should_not be_blank
    page.find('#shoe')['src'].should_not be_blank
  end
end
