class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.references :expense_category, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.date :expense_date
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
