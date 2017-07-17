require 'rails_helper'
require 'faker'

describe "CRUD for products" do
  user = FactoryGirl.create(:user)
  product = FactoryGirl.create(:product, name: 'cup')

  it "allows admin user to create a product" do
    visit '/'
    click_link 'sign in'
    fill_in :Email, with: user.email
    fill_in :Password, with: user.password
    click_button 'Log in'
    click_link 'admin'
    click_link 'Products', match: :first
    click_link 'Add new'
    fill_in 'Name', with: 'teacup'
    fill_in 'Description', with: 'super pretty'
    fill_in 'Price', with: '10'
    click_button 'Save'
    expect(page).to have_content 'teacup'
  end
  it "allows admin user to edit a product" do
    visit '/'
    click_link 'sign in'
    fill_in :Email, with: user.email
    fill_in :Password, with: user.password
    click_button 'Log in'
    click_link 'admin'
    click_link 'Products', match: :first
    click_link 'Edit', match: :first
    fill_in 'Name', with: 'toasterpop'
    click_button 'Save'
    expect(page).to have_content 'toasterpop'
  end  
end
