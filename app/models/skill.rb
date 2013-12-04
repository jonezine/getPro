class Skill < ActiveRecord::Base

  validates :skill, :presence => true

  has_many :user_skills

end
