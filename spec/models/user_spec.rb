require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:password)}
  end
  describe "relationships and defaults" do 
    it "has many teams" do
      user = build(:user)
      expect(user).to respond_to(:teams)
      expect(user.points).to eq(0.0)
    end
  end
end
