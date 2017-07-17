
require 'rails_helper'

describe "the process to sign up" do
  user = FactoryGirl.build(:user)

  it 'enables creation of account' do
    visit '/'
    click_link 'sign up'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
