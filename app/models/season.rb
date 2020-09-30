class Season < ApplicationRecord
  has_many :weeks
  has_many :current_weeks

  validates_presence_of :year
  validates_uniqueness_of :year
end
