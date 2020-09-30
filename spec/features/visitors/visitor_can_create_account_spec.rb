require 'rails_helper'

feature "visitor can register" do
  scenario "visitor registers" do

    email = "funbucket13"
    visit '/'

    click_on "Register for League"

    expect(current_path).to eq(new_user_path)

    fill_in 'user_email', with: email
    fill_in 'user_password', with: "test"

    click_on "Create Account"

    expect(page).to have_content("Welcome, #{email}!")
  end
  scenario "keeps a user logged in after registering" do
    visit "/"

    click_on "Register for League"

    username = "funbucket13"
    password = "test"

    fill_in :user_email, with: username
    fill_in :user_password, with: password

    click_on "Create Account"

    visit "/users/#{User.last.id}"

    expect(page).to have_content("Welcome, #{username}!")
  end
end
