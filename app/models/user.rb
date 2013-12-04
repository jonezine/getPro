class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :user_companies
  has_many :user_friends
  has_many :user_languages
  has_many :user_skills
  has_many :user_projects
  has_many :employments

end
