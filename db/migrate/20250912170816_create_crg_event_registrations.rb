class CreateCrgEventRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :crg_event_registrations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :crg_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
