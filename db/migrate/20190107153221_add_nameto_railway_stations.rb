class AddNametoRailwayStations < ActiveRecord::Migration[5.1]
  def change
    add_column :railway_stations, :name, :string
  end
end
