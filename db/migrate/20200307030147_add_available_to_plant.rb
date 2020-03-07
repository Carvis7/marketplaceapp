class AddAvailableToPlant < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :available, :boolean
  end
end
