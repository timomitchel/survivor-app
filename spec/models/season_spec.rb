require "rails_helper"

describe Season, type: :model do
  describe "validations" do
    it { should validate_presence_of :year }
    it { should validate_uniqueness_of :year }
  end

  describe "associations" do
    it {should have_many :weeks}
  end
end
