class Company < ActiveRecord::Base

  validates :name, :description, :location, :year_founded, :presence => true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  has_many :projects
  has_many :news, dependent: :destroy
  has_many :user_companies

end
