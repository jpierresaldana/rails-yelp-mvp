class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(params_restaurant)
    redirect_to restaurants_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
