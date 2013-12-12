class Language < ActiveRecord::Base

  validates :language, :presence => true

  has_many :user_languages
  has_many :users, :through => :user_languages

end
