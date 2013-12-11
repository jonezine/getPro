class Message < ActiveRecord::Base

  default_scope -> { order('created_at DESC') }

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :user

  validates :title, :content, :user_id , :presence => true

end
