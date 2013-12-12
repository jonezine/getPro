class Employment < ActiveRecord::Base

  validates :employment, :presence => true

  has_many :users, :through => :user_employments
end
