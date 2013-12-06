class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages, dependent: :destroy
  has_many :user_friends
  has_many :user_languages
  has_many :user_skills
  has_many :user_projects
  has_many :employments
  has_many :user_companies
  has_many :companies, :through => :user_companies #Faz logo o join das tabelas.

  #PaperClip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :small => "45x45" }, :default_url => "/images/:style/missing.png"

end
