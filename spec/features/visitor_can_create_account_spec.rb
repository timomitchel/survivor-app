require 'rails_helper'

feature "visitor can register" do

  scenario "visitor registers" do

  username = "funbucket13"
  visit '/'

  click_on "Register for League"

  expect(current_path).to eq(new_user_path)

  fill_in 'user_username', with: username
  fill_in 'user_password', with: "test"

  click_on "Create User"

  expect(page).to have_content("Welcome, #{username}!")
  end
end