class Company < ActiveRecord::Base

  validates :name, :description, :location, :year_founded, :presence => true

  has_many :projects
  has_many :news
  has_many :user_companies

end
