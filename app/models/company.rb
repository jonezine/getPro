class Company < ActiveRecord::Base

  has_many :projects
  has_many :news
  has_many :user_companies

end
