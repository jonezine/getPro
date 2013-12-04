class UserCompany < ActiveRecord::Base

  validates :user_id, :company_id, :presence => true

  belongs_to :company
  belongs_to :user

end
