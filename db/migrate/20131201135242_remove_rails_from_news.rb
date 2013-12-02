class RemoveRailsFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :rails, :string
  end
end
