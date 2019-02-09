class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :team, foreign_key: true
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
