require 'spec_helper'

feature 'user selects an outfit', %Q{
  As an authorized user
  I want to select an outfit
  So that I know what to wear
} do

  #ACCEPTANCE CRITERIA
  #User is shown one pair of pants, one pair of shoes, and one shirt by default
  #If user doesn't like any of the items shown, he/she can select a button and a complete new outfit will be shown
  #If user likes one or more of the items shown, he/she can keep the items that he/she likes, and select a button to show a new item of the type not kept

  scenario "user sees a random outfit upon initial view of homepage" do
    visit root_path
    save_and_open_page
    page.find('#shirt')['src'].should_not be_blank
    page.find('#pant')['src'].should_not be_blank
    page.find('#shoe')['src'].should_not be_blank
  end

  # scenario "user sees a completely new outfit if he/she doesn't like the one shown" do
  #   visit root_path

  #   shirt_image = page.find('#shirt')['src']
  #   pant_image = page.find('#pant')['src']
  #   shoe_image = page.find('#shoe')['src']

  #   click_on('Give me new outfit!')

  #   shirt_image_two = page.find('#shirt')['src']
  #   pant_image_two = page.find('#pant')['src']
  #   shoe_image_two = page.find('#shoe')['src']

  #   expect(shirt_image).to_not eql(shirt_image_two)
  #   expect(pant_image).to_not eql(pant_image_two)
  #   expect(shoe_image).to_not eql(shoe_image_two)
  # end

  # scenario "user keeps the item he/she likes and sees only new items of the type he/she doesn't like" do
  #   visit root_path

  #   shirt_image = page.find('#shirt')['src']
  #   pant_image = page.find('#pant')['src']
  #   shoe_image = page.find('#shoe')['src']

  #   find('#shirt').check('Keep')
  #   find('#pant').check('Keep')
  #   click_on('Give me new outfit!')

  #   shirt_image_two = page.find('#shirt')['src']
  #   pant_image_two = page.find('#pant')['src']
  #   shoe_image_two = page.find('#shoe')['src']

  #   expect(shirt_image).to eql(shirt_image_two)
  #   expect(pant_image).to eql(pant_image_two)
  #   expect(shoe_image).to_not eql(shoe_image_two)
  # end
end
