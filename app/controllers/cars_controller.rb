class CarsController < ApplicationController

  before_action :set_car, only: [:show, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]

  # GET method to get all carss from database
  def index
    @cars= Car.all
  end

  # GET method to get a car by id   
  def show   
    @car = Car.find(params[:id])   
  end   

  # GET method for the new car form   
  def new   
    @car = Car.new   
  end

# POST method for processing form data   
def create 
  @car = current_user.cars.new(car_params)
  @car.save
end
  

 # GET method for editing a car based on id   
 def edit   
  @car = current_user.cars.find(params[:id])   
 end 

# DELETE method for deleting a car from database based on id   
def destroy   
  @car = Car.find(params[:id])   
  if @car.delete   
    flash[:notice] = 'car deleted!'   
    redirect_to root_path   
  else   
    flash[:error] = 'Failed to delete this car!'   
    render :destroy   
  end   
end 


private
def car_params
  params.require(:car).permit(:img, :name, :make, :year, :price)
end

end


