require "rails_helper"

describe UserTeam, type: :model do
  describe "associations" do
    it {should belong_to :user}
    it {should belong_to :team}
    it {should belong_to :week}
  end
end
