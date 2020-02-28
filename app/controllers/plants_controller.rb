class PlantsController < ApplicationController

  before_action :find_plant, only: [:show,:edit,:update,:destroy]

  def index
    @plants = Plant.all
  end

  def show
    
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if(@plant.save)
      redirect_to @plant
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end



  private

  def plant_params
    params.require(:plant).permit(:name,:variant,:price )
  end

  def find_plant
    @plant = Plant.find(params[:id])
  end

end
