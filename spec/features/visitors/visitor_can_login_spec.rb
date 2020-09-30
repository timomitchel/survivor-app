require 'rails_helper'

RSpec.describe "Logging In" do
  it "can log in with valid credentials" do
    user = User.create(email: "funbucket13", password: "test")

    visit "/"

    click_on "Log In"

    expect(current_path).to eq('/login')

    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_on "Authenticate"

    expect(current_path).to eq(user_path(user))

    expect(page).to have_content("Welcome, #{user.email}")
    expect(page).to have_content("User was successfully logged in")
    expect(page).to have_link("Log Out")
    expect(page).to_not have_link("Register as a User")
    expect(page).to_not have_link("I already have an account")
  end
end
