class AddPassengerToTickets < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :passenger, index: true
  end
end
