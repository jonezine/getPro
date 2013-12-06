class News < ActiveRecord::Base

  default_scope -> { order('created_at DESC') }

  validates :title, :content, :company_id, :presence => true

  belongs_to :company

end
