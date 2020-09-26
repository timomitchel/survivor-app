require "rails_helper"

describe Week, type: :model do
  describe "validations" do
    it { should validate_presence_of :number }
  end

  describe "associations" do
    it {should belong_to :season}
    it {should have_many :user_teams}
    it {should have_many(:teams).through(:user_teams) }
    it {should have_many(:users).through(:user_teams) }
  end
end
