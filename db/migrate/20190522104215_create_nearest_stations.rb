class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :line
      t.string :station
      t.integer :walking_minutes
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
