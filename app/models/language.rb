class Language < ActiveRecord::Base

  validates :language, :presence => true

  has_many :user_languages

end
