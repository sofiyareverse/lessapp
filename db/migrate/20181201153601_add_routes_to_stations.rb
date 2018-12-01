class AddRoutesToStations < ActiveRecord::Migration[5.1]
  def change
    create_join_table :railway_stations, :routes do |t|
      t.index [:stations_id, :routes_id]
    end
  end
end
