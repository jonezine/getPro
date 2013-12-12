class Project < ActiveRecord::Base

  validates :project, :presence => true

  belongs_to :company
  has_many :users, :through => :user_projects

end
