class Report < ActiveRecord::Base
  validates :description, :presence => true
end