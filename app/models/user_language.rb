class UserLanguage < ActiveRecord::Base

  validates :user_id, :language_id, :presence => true

  belongs_to :user
  belongs_to :language

end
