class AddNewsIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :news_id, :string
  end
end
