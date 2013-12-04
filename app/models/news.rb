class News < ActiveRecord::Base

  validates :title, :content, :company_id, :presence => true

  belongs_to :company

end
