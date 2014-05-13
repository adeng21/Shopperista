require 'spec_helper'

feature 'user signs up' , %Q{
  As an unauthenticated user
  I want to sign up
  so that I can submit and review site content
  } do

    before :each do
      visit new_user_registration_path
    end

    context 'user succesfully signs in' do
      let(:user){ FactoryGirl.build(:user) }

      scenario 'specifying valid and required information' do

        pre_count = User.count

        fill_in 'Name', with: user.name
        fill_in 'Email', with: user.email
        fill_in 'user_password', with: user.password
        fill_in 'Password confirmation', with: user.password
        click_on 'Sign up'

        expect(page).to have_content("You're in!")
        expect(User.count).to eq(pre_count + 1)
      end
    end

    scenario 'required information is not supplied' do

      pre_count = User.count

      click_button 'Sign up'

      save_and_open_page
      expect(page).to have_content("can't be blank")
    end
  end
