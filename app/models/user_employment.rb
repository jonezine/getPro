class UserEmployment < ActiveRecord::Base

  validates :user_id, :employment_id, :presence => true

  belongs_to :user
  belongs_to :employment

end
