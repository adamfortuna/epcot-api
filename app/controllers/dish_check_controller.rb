class DishCheckController < ApplicationController
  before_filter :set_dish

  # POST /dishes/:id/check
  def create
    check = current_user.dish_checks.new(:dish_id => @dish.id)
    if check.save
      render :create, :status => :created
    else
      render :create, :status => :created
    end
  end
  
  # DELETE /dishes/:dish_id/check
  def destroy
    check = current_user.dish_checks.where(:dish_id => @dish.id).first
    if check.destroy
      render :destroy
    else
      render :destroy
    end
  end
  
  private
  
  def set_dish
    @dish = Dish.find_by_slug(params[:dish_id])
  end
end