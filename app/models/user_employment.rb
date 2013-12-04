class UserEmployment < ActiveRecord::Base

  belongs_to :user
  belongs_to :employment

end
