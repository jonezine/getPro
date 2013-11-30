class AddNewsIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :news_id, :string
  end
end
