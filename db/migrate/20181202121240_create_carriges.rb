class CreateCarriges < ActiveRecord::Migration[5.1]
  def change
    create_table :carriges do |t|
      t.integer :number
      t.string :carrige_type
      t.integer :up_sits
      t.integer :down_sits
      t.integer :side_up_sits
      t.integer :side_down_sits
      t.integer :sitting_sits

      t.timestamps
    end
  end
end
