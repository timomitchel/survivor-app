class RemoveIndexAndColumnWeekIdFromUserTeams < ActiveRecord::Migration[5.1]
  def change
    remove_index :user_teams, :week_id
    remove_column :user_teams, :week_id
  end
end
