class ChangeColumnsNull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :properties, :name, null: false 
    change_column_null :properties, :address, null: false
    change_column_null :properties, :price, null: false
    change_column_null :properties, :age, null: false
    change_column_null :properties, :note, null: false
    change_column_null :nearest_stations, :line, null: false
    change_column_null :nearest_stations, :station, null: false
    change_column_null :nearest_stations, :walking_minutes, null: false
    change_column_null :nearest_stations, :property_id, null: false
  end
end
