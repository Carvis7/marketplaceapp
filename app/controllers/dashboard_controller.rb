class DashboardController < ApplicationController
  before_action :authenticate_user!

def index
  @plants = Plant.where(user_id: current_user.id)
  @bought_plants = Order.where(user_id: current_user.id)
end

end
