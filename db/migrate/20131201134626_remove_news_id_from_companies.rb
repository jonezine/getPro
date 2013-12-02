class RemoveNewsIdFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :news_id, :string
  end
end
