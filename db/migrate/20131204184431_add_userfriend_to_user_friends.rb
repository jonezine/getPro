class AddUserfriendToUserFriends < ActiveRecord::Migration
  def change
    add_column :user_friends, :userfriend_id, :integer
  end
end
