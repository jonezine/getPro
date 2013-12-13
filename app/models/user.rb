class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :user_languages
  has_many :languages, :through => :user_languages

  has_many :friendships
  has_many :friends, :through => :friendships


  has_many :messages, dependent: :destroy
  has_many :user_friends
  has_many :user_skills
  has_many :user_projects
  has_many :user_employments
  has_many :user_companies
  has_many :companies, :through => :user_companies #Faz logo o join das tabelas.
  has_many :employments, :through => :user_employments
  has_many :skills, :through => :user_skills
  has_many :projects, :through => :user_projects

  #PaperClip
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :small => "45x45" }, :default_url => "/images/:style/missing.png"

  #find users


  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end



end
