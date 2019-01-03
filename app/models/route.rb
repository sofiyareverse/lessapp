class Route < ApplicationRecord
  validates :name, presence: true

  has_and_belongs_to_many :railway_stations, through: :railway_stations_route
  has_many :trains
end
