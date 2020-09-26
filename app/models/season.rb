class Season < ApplicationRecord
  has_many :weeks

  validates_presence_of :year
  validates_uniqueness_of :year
end
