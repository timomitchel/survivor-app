class RemoveWeeks < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :user_teams, :weeks
    drop_table :weeks
  end
end
