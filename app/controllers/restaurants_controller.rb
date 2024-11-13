class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new # Reste sur la vue "new" si les validations échouent
    end
  end

  private

  def restaurant_params
    # Remplace les attributs ci-dessous par ceux que tu utilises dans Restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
