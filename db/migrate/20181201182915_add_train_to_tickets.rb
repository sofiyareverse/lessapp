class AddTrainToTickets < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :train
  end
end
