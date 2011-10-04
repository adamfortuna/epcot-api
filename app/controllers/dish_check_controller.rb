class DishCheckController < ApplicationController
  respond_to :html, :js
  before_filter :set_dish

  # POST /dishes/:id/check
  def create
    @dish_id = @dish.id
    @check = current_user.dish_checks.where(:dish_id => @dish.id).first
    if @check
      @check = nil if @check.destroy
    else
      @check = current_user.dish_checks.new(:dish_id => @dish.id)
      @check.save
    end
    respond_with(@check)
  end

  private
  
  def set_dish
    @dish = Dish.find_by_slug(params[:dish_id])
  end
end