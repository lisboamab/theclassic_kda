class AddUserCodeToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :user_code, :string
    add_index :users, :user_code, unique: true
  end
end
