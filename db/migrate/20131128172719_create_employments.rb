class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :employment

      t.timestamps
    end
  end
end
