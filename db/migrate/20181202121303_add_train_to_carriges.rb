class AddTrainToCarriges < ActiveRecord::Migration[5.1]
  def change
    add_reference :carriges, :train
  end
end
