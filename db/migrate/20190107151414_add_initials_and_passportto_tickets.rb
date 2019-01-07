class AddInitialsAndPassporttoTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :initials, :string
    add_column :tickets, :passport_data, :string
  end
end
