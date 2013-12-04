class CreateUserFriends < ActiveRecord::Migration
  def change
    create_table :user_friends do |t|
      t.integer :accepted
      t.integer :user_id
      t.integer :user_id

      t.timestamps
    end
  end
end
