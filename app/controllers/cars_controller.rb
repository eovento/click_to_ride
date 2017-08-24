class CarsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(cars_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    redirect_to cars_path unless @car.user == current_user
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.user == current_user
      if @car.update(cars_params)
        redirect_to "index"
      else
        render "index"
      end
    end
  end

  def destroy
  end

  private

  def cars_params
    params.require(:car).permit(:brand, :model, :year, :description, :document, :plate, pictures: [])
  end

end
