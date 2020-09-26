require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:email)}
    it {should validate_presence_of(:password)}
  end
  describe "associations" do
    it {should have_many :user_teams}
    it {should have_many(:teams).through(:user_teams) }
    it {should have_many(:weeks).through(:user_teams) }
  end
  describe "scenarios" do
    it "can call teams and starts with no points" do
      user = build(:user)
      expect(user).to respond_to(:teams)
      expect(user.points).to eq(0.0)
    end
  end
end
