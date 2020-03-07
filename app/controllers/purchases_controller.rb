class PurchasesController < ApplicationController

  def create
    plant = Plant.find(params[:plant_id])
    plant.update(available: false)
    Order.create(user_id: current_user.id, plant_id: plant.id)
    redirect_to plants_path
  end


end
