class CreateUserTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :user_teams do |t|
      t.belongs_to :user
      t.belongs_to :team
      t.timestamps
    end
    execute "insert into user_teams(team_id,user_id) select team_id,user_id from teams_users"
    drop_table :teams_users
  end
end
