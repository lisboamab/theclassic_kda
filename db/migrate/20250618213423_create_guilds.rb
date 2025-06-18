class CreateGuilds < ActiveRecord::Migration[8.0]
  def change
    create_table :guilds do |t|
      t.string :name
      t.integer :tier

      t.timestamps
    end
    add_index :guilds, :name, unique: true
  end
end
