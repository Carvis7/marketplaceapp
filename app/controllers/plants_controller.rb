class PlantsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]
  before_action :find_plant, only: [:show,:edit,:update,:destroy]
  before_action :authorize_user!, only: [:update,:edit,:destroy]

  def index
    @plants = Plant.all.where(available:true)
  end

  def show
    
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user_id = current_user.id
    @plant.available = true
    if(@plant.save)
      redirect_to @plant
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if (@plant.update(plant_params))
      redirect_to @plant
    else
      render :edit
    end
  end

  def destroy
    @plant.delete

    redirect_to dashboard_index_path
  end


  private

  def plant_params
    params.require(:plant).permit(:name,:variant,:price,:pot_size,:image,:available)
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end

  def authorize_user!
    return true if current_user.id == @plant.user_id
  end

end
