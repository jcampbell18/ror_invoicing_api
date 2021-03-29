class CreateUserCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_categories do |t|
      t.string :name, limit: 50
      t.string :description, limit: 100

      t.timestamps
    end
  end
end
