class ChangePointsDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :points, 0.0
  end
end
