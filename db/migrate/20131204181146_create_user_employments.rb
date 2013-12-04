class CreateUserEmployments < ActiveRecord::Migration
  def change
    create_table :user_employments do |t|
      t.integer :user_id
      t.integer :employment_id

      t.timestamps
    end
  end
end
