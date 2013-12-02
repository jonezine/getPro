class RemoveNewsFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :News, :string
  end
end
