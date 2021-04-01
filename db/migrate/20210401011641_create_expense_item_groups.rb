class CreateExpenseItemGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :expense_item_groups do |t|
      t.references :expense, null: false, foreign_key: true
      t.references :expense_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
