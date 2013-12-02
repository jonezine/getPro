class RemoveGFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :g, :string
  end
end
