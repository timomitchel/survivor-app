class Week < ApplicationRecord
  belongs_to :season
  has_many :user_teams, dependent: :destroy
  has_many :teams, through: :user_teams
  has_many :users, through: :user_teams

  validates_presence_of :number

end
