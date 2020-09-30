class RenameTableCurrentWeeks < ActiveRecord::Migration[5.1]
  def change
    rename_table :current_weeks, :weeks
  end
end
