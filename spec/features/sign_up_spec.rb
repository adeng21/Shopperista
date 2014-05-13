require 'spec_helper'

feature 'user signs up' , %Q{
  As an unauthenticated user
  I want to sign up
  so that I can submit and review site content
  } do
    context 'user succesfully signs in' do
      let(:user){ FactoryGirl.create(:user) }

      scenario 'specifying valid and required information' do
        visit root_path
        click_link 'Sign Up'
        fill_in 'Name', with: user.name
        fill_in 'Email', with: user.email
        fill_in 'user_password', with: user.password
        fill_in 'Password confirmation', with: user.password

        expect(page).to have_content("You're in!")
        expect(page).to have_content("Sign Out")
      end
    end
  end
