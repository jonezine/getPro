class Skill < ActiveRecord::Base

  validates :skill, :presence => true

  has_many :users, :through => :user_skills

end
