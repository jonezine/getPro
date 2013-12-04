class Project < ActiveRecord::Base

  validates :project, :presence => true

  belongs_to :company
  has_many :user_projects

end
