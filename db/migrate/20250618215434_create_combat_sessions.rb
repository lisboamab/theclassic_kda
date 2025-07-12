class CreateCombatSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :combat_sessions do |t|
      t.timestamp :started_at
      t.timestamp :ended_at
      t.date :executed_on

      t.timestamps
    end
  end
end
