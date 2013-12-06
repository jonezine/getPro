class Message < ActiveRecord::Base

  default_scope -> { order('created_at DESC') }

  belongs_to :user

  validates :title, :content, :user_id , :presence => true

end
