class DishCheck < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  belongs_to :dish, :counter_cache => true
  
  # validates :dish_id, :uniqueness => true, :scope => :user_id
end