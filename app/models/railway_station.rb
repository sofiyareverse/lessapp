class RailwayStation < ApplicationRecord
  has_and_belongs_to_many :routes, through: :railway_stations_route
  has_many :trains, inverse_of: :current_station, foreign_key: 'current_station_id'

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position').joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }
end
