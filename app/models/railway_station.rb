class RailwayStation < ApplicationRecord
  has_and_belongs_to_many :routes
  has_many :trains, inverse_of: :current_station, foreign_key: 'current_station_id'
end
