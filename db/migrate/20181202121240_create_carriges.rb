class CreateCarriges < ActiveRecord::Migration[5.1]
  def change
    create_table :carriges do |t|
      t.string :carrige_type
      t.integer :up_sits
      t.integer :down_sits

      t.timestamps
    end
  end
end
