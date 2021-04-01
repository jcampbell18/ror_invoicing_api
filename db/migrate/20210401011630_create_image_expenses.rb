class CreateImageExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :image_expenses do |t|
      t.references :image, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
