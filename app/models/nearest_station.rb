class NearestStation < ApplicationRecord
  belongs_to :property, inverse_of: :nearest_stations

  validates :line, presence: true, length: {maximum: 20}
  validates :station, presence: true, length: {maximum: 20}
  validates :walking_minutes, presence: true, length: {maximum: 5}, numericality: true
end
