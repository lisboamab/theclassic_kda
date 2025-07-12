class CreateKillEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :kill_events do |t|
      t.references :combat_session, null: false, foreign_key: true
      t.references :killer, null: false, foreign_key: true
      t.references :victim, null: false, foreign_key: true

      t.timestamps
    end
  end
end
