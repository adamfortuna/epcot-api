class RestaurantDishesController < ApplicationController
  before_filter :set_restaurant

  # GET /restaurant/:restaurant_id/dishes
  def index
    @dishes = @restaurant.dishes.order(sort_order).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dishes }
    end
  end
  
  def show
    @dish = @restaurant.dishes.find_by_slug(params[:id])

    if user_signed_in?
      @review = @dish.reviews.find_by_user_id(current_user.id) || @dish.reviews.new
    end
      

    respond_to do |format|
      format.html
      format.json { render json: @dishe }
    end
  end
  
  private
  
  def set_restaurant
    @restaurant = Restaurant.find_by_slug(params[:restaurant_id])
  end
  
  def sort_order
    params[:order] ||= 'category'
    
    order = params[:order].split("-").join(" ")
  end
end