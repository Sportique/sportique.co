class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.text :favorite_sports_teams
      t.integer :age
      t.integer :gender

      t.timestamps null: false
    end
  end
end
