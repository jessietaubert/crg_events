class CreateCrgEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :crg_events do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
