class PlantsController < ApplicationController

   def index
     plant = Plant.all
     render json: plant
    end
 
    def show
      plant = Plant.find(id: params[:id])
      render json: plant
    end

   def create 
    plant = Plant.create(params.permit(:name, :image, :price))
    render json:
   end

end
