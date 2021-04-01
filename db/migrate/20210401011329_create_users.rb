class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :user_category, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.string :email, limit: 100
      t.string :password, limit: 250
      t.string :salt, limit: 128
      t.string :first_name, limit: 75
      t.string :last_name, limit: 100
      t.string :phone, limit: 10
      t.string :phone_extension, limit: 6

      t.timestamps
    end
  end
end
