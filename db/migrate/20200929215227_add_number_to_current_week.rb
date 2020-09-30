class AddNumberToCurrentWeek < ActiveRecord::Migration[5.1]
  def change
    add_column :current_weeks, :number, :integer
  end
end
