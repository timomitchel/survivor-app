class User < ApplicationRecord
  has_secure_password
  has_many :user_teams, dependent: :destroy
  has_many :teams, through: :user_teams

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
