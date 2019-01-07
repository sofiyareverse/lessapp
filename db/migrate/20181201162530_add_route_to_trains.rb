class AddRouteToTrains < ActiveRecord::Migration[5.1]
  def change
    add_reference :trains, :route, index: true
  end
end
