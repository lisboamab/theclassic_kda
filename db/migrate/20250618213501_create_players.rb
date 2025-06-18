class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :nickname
      t.integer :kills
      t.integer :deaths
      t.references :guild, null: false, foreign_key: true
      t.integer :character_classes

      t.timestamps
    end
    add_index :players, :nickname, unique: true
  end
end
