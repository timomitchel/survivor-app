class AddPointsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :points, :float
  end
end
