class CreateInvoiceExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_expenses do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
