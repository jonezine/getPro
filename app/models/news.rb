class News < ActiveRecord::Base

  default_scope -> { order('created_at DESC') }

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :title, :content, :company_id, :presence => true

  belongs_to :company

end
