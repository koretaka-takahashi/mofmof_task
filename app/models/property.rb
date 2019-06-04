class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations
  
  validates :name, presence: true, length: {maximum: 30}
  validates :address, presence: true, length: {maximum: 50}
  validates :price, presence: true, length: {maximum: 10}, numericality: true
  validates :age, presence: true, length: {maximum: 3}, numericality: true
  validates :note, presence: true, length: {maximum: 200}
end
