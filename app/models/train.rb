class Train < ApplicationRecord
  belongs_to :route
  belongs_to :tickets, optional: true
  belongs_to :current_station,
             class_name: 'RailwayStation',
             foreign_key: :current_station_id,
             optional: true
  has_many :carriges

  def ordered_carriges
    if self.ordering
      self.carriges.order("number ASC")
    else
      self.carriges.order("number DESC")
    end
  end
end
