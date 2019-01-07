class AddRoutesToStations < ActiveRecord::Migration[5.1]
  def change
    create_table :railway_stations_routes do |t|
      t.integer :railway_station_id
      t.integer :route_id

      t.index %i[railway_station_id route_id], name: 'index_on_station_and_route'
    end
  end
end
