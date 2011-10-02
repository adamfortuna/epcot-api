class UserDishesController < ApplicationController
  respond_to :html, :js

  before_filter :set_user

  # GET /users/:user_id/dishes
  def index
    @dishes = @user.dishes.order(sort_order).includes(:restaurant)
    respond_with(@dishes)
  end
  
  private
  
  def set_user
    @user = User.find_by_slug(params[:user_id])
  end
  
  def sort_order
    params[:order] ||= 'rating-desc'
    order = params[:order].split("-").join(" ")
  end
end