class CarsController < ApplicationController

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
  Car.create(car_params)
        # Artist.create(params.require(:artist).permit(:name, :albums, :hometown))
        redirect_to carhome_path
end   

 # GET method for editing a car based on id   
 def edit   
  @car = Car.find(params[:id])   
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
end


