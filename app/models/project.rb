class Project < ActiveRecord::Base

  belongs_to :company
  has_many :user_projects

end
