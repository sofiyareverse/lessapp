class AddOrderToTrain < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :ordering, :bolean, default: true
  end
end
