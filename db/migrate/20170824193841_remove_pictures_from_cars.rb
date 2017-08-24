class RemovePicturesFromCars < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :pictures, :string
  end
end
