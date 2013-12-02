class RemoveScaffoldFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :scaffold, :string
  end
end
