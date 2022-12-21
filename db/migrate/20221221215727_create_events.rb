class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.timestamp :ts
      t.string :iduff
      t.float :latitude
      t.float :longitude
      t.float :altitude
      t.float :accuracy
      t.float :speed
      t.integer :speed_accuracy
      t.decimal :heading

      t.timestamps
    end
  end
end
