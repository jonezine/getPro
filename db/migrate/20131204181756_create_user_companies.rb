class CreateUserCompanies < ActiveRecord::Migration
  def change
    create_table :user_companies do |t|
      t.integer :current
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
