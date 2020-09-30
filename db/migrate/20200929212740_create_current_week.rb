class CreateCurrentWeek < ActiveRecord::Migration[5.1]
  def change
    create_table :current_weeks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :season
    end
  end
end
