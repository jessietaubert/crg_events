class CreateClimbs < ActiveRecord::Migration[8.0]
  def change
    create_table :climbs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :crg_event, null: false, foreign_key: true
      t.integer :station
      t.string :color
      t.string :grade
      t.string :modifier

      t.timestamps
    end
  end
end
