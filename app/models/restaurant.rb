class Restaurant < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged
  has_many :dishes, :dependent => :destroy

  validates :name, :presence => true, length: { :maximum => 250 }
end
