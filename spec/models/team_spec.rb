require "rails_helper"

describe Team, type: :model do
  describe "validations" do
  end

  describe "associations" do
    it {should have_many :user_teams}
    it {should have_many(:weeks).through(:user_teams) }
    it {should have_many(:users).through(:user_teams) }
  end
end
