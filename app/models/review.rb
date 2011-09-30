class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user, :counter_cache => true
  
  scope :with_rating, where("rating is not null")
  scope :reverse_cronological, order("created_at desc")
  
  validates :title, :presence => true
  validates :review, :presence => true
  validates :rating, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
  
  after_save :update_reviewable_rating
  
  
  private
  def update_reviewable_rating
    reviewable.update_rating!
  end
end
