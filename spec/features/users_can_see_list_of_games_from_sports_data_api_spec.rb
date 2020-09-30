require "rails_helper"

feature "When I visit the home page, I get a list of this weeks NFL games" do
  scenario "" do
    visit '/'

    expect(page).to have_content("16 Games")
    # And I should see a message "7 Results"
    expect(page).to have_css(".game", count: 16)
    # And I should see a list of 7 the members of the house for Colorado

    within(first(".member")) do
      expect(page).to have_css(".teams")
    end
  end
end
