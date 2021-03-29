class CreateExpenseItems < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_items do |t|
      t.integer :quantity, limit: 4
      t.string :name, limit: 150
      t.decimal :amount, precision: 8, scale: 2
      t.decimal :subtotal, precision: 8, scale: 2
      t.decimal :tax, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
