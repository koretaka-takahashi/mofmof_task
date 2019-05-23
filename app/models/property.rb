class Property < ApplicationRecord
  has_many :nearest_stations, inverse_of: :property
  accept_nested_attributes_for :nearest_stations
end
