class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :username, :use => :slugged

  has_many :reviews
  has_many :dish_checks
  has_many :dishes, :through => :dish_checks
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :url
  
  validates :username, :presence => true, length: { :maximum => 250 }
  
  def checked?(dish)
    dish_ids.include?(dish.id)
  end
end
