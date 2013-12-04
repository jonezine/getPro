class UserFriend < ActiveRecord::Base

  validates :user_id, :userfriend_id, :presence => true

  belongs_to :user

end
