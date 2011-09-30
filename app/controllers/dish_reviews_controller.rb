class DishReviewsController < ApplicationController
  respond_to :html, :js
  before_filter :set_dish
  before_filter :set_restaurant

  # POST /dishes/:dish_id/reviews
  def create
    @review = @dish.reviews.new(params[:review].merge(:user_id => current_user.id))

    flash[:notice] = "Review successfully created" if @review.save
    respond_with(@review, :layout => !request.xhr? )
        
    # if @review.save
    #   redirect_to dish_review_path(@dish, @review), :notice => "Successfully added your review!"
    # else
    #   head :unprocessable_entity, :message => "test"
    #   
    #   respond_to do |format|
    #     # format.html { render '/restaurant_dishes/show' }
    #     format.js { 'alert("test");' }
    #   end
    # end
  end
  
  # POST /dishes/:dish_id/reviews
  def update
    @review = current_user.reviews.where(:reviewable_id => @dish.id, :reviewable_type => 'Dish').first!
    flash[:notice] = "Review updated created" if @review.update_attributes(params[:review])
    respond_with(@review, :layout => !request.xhr? )
    
    # if @review.update_attributes(params[:review])
    #   redirect_to dish_review_path(@dish, @review), :notice => "Successfully added your review!"
    # else
    #   head :unprocessable_entity
    #   # respond_to do |format|
    #   #   format.html { render '/restaurant_dishes/show' }
    #   # end
    # end
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