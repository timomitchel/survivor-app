class AddSeasonToWeeks < ActiveRecord::Migration[5.1]
  def change
    add_reference :weeks, :season, foreign_key: true
  end
end
