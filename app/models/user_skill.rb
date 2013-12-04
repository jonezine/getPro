class UserSkill < ActiveRecord::Base

  validates :user_id, :skill_id, :presence => true

  belongs_to :user
  belongs_to :skill

end
