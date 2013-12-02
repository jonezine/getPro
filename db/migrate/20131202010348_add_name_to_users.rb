class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :summary, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :image, :string

  end
end
