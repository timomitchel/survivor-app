class AddWeeksToUserTeams < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_teams, :week, foreign_key: true
  end
end
