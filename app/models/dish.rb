class Dish < ActiveRecord::Base
  CATEGORIES = [
    "Wine",
    "Alcohol",
    "Food",
    "Dessert",
    "Beer"
  ].sort.freeze

  extend FriendlyId
  friendly_id :name, :use => :slugged
  belongs_to :restaurant, :counter_cache => true
  has_many :reviews, :as => :reviewable
  
  # validates :restaurant_id, :presence => true
  validates :name, :presence => true, length: { :maximum => 250 }
  
  def update_rating!
    new_ratings_count = reviews.count
    new_reviews_count = reviews.with_review.count
    new_rating = (new_ratings_count == 0) ? nil : reviews.sum(:rating)
    update_attributes({ :rating => new_rating, :ratings_count => new_ratings_count, :reviews_count => new_reviews_count })
  end
end