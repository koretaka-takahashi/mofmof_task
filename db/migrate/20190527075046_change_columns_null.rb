class ChangeColumnsNull < ActiveRecord::Migration[5.0]
  def change
    change_column_null :properties, :name, false 
    change_column_null :properties, :address, false
    change_column_null :properties, :price, false
    change_column_null :properties, :age, false
    change_column_null :properties, :note, false
    change_column_null :nearest_stations, :line, false
    change_column_null :nearest_stations, :station, false
    change_column_null :nearest_stations, :walking_minutes, false
    change_column_null :nearest_stations, :property_id, false

  end
end
