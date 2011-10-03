class FavoritesController < ApplicationController
  def index
    @dishes = Dish.where("reviews_count > 0 OR dish_checks_count > 0").order(sort_order).limit(25)
  end
  
  private
  def sort_order
    params[:order] ||= "dish_checks_count-desc"
    params[:order].split("-").join(" ")
  end
end