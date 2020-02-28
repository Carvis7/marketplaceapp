class AddPotSizeToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :pot_size, :integer
  end
end
