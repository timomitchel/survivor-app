require 'rails_helper'

feature "user can pick a team" do

  scenario "user picks a valid team name" do
    # As a user
    # When I visit "/"
    visit '/'

    select "Denver", from: :teams
    # And I select "Denver" from the dropdown
    click_on "Select"
    # And I click on Select
    expect(current_path).to eq(root_path)
    # Then my path should be "/" with a confirmation box
    expect(page).to have_content("Are you sure you want to pick Denver Broncos for week 1?")
    # And I should see a message "Are you sure"
    expect(page).to have_css(".confirmation", count: 1)
    # And I should see a confirmation box

    within(first(".confirmation")) do
      expect(page).to have_css(".confirm")
      expect(page).to have_css(".cancel")
    end

  end
end