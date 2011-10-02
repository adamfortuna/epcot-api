class DishReviewsController < ApplicationController
  respond_to :html, :js
  before_filter :set_dish
  before_filter :set_restaurant

  # POST /dishes/:dish_id/reviews
  def create
    @review = @dish.reviews.new(params[:review].merge(:user_id => current_user.id))

    flash[:notice] = "Review successfully created" if @review.save
    respond_with(@review, :layout => !request.xhr?)
  end
  
  # POST /dishes/:dish_id/reviews
  def update
    @review = current_user.reviews.where(:reviewable_id => @dish.id, :reviewable_type => 'Dish').first!
    flash[:notice] = "Review updated created" if @review.update_attributes(params[:review])
    respond_with(@review, :layout => !request.xhr? )
  end
  
  # GET /dishes/:dish_id/reviews/:id
  def show
    @review = Review.find(params[:id])
  end
  
  private
  
  def set_dish
    @dish = Dish.find_by_slug(params[:dish_id])
  end
  def set_restaurant
    @restaurant = @dish.restaurant
  end
end