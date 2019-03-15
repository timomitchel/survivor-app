require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:password)}
  end
  describe "relationships" do 
    it "has many teams" do
      user = build(:user)
      expect(user).to respond_to(:teams)
    end
  end
end
