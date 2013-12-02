class CreateMessages < ActiveRecord::Migration
  def change
    drop_table :messages
    create_table :messages do |t|
      t.string :title
      t.string :image
      t.string :content

      t.timestamps
    end
  end
end
