class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :image
      t.string :content
      t.string :rails
      t.string :g
      t.string :scaffold
      t.string :News
      t.string :title
      t.string :image
      t.string :content

      t.timestamps
    end
  end
end
