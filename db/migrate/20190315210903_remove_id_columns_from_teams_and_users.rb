class RemoveIdColumnsFromTeamsAndUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :team_id
    remove_column :teams, :user_id
  end
end
