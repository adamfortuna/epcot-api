class Review < ActiveRecord::Base
  belongs_to :reviewable, :polymorphic => true
  belongs_to :user, :counter_cache => true
  
  scope :with_review, where("title IS NOT NULL and review IS NOT NULL")
  scope :with_rating, where("rating is not null")
  scope :reverse_cronological, order("created_at desc")
  
  validates :title, :presence => true, :if => :review?
  validates :review, :presence => true, :if => :title?
  validates :rating, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
  
  after_save :update_reviewable_rating
  before_save :nullify_review
  
  def has_review?
    review && title
  end
  
  private
  def update_reviewable_rating
    reviewable.update_rating!
  end
  
  def nullify_review
    self.title = nil if title.blank?
    self.review = nil if review.blank?
  end
end
