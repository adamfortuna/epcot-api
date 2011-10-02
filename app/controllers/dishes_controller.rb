class DishesController < ApplicationController
  respond_to :html, :js
  
  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = Dish.order(sort_order, :name).includes(:restaurant)
    @dishes = @dishes.where(:category => params[:category]) if params[:category]
    respond_with(@dishes)
  end
  
  private
  def sort_order
    params[:order] ||= 'category'
    params[:order].split("-").join(" ")
  end
end
