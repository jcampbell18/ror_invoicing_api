class CreateInvoiceReports < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_reports do |t|
      t.references :invoice, null: false, foreign_key: true
      t.boolean :paid
      t.date :paid_date
      t.string :paid_checknum, limit: 10
      t.decimal :loan_amount, precision: 8, scale: 2
      t.boolean :loan_paid
      t.decimal :project_cost, precision: 8, scale: 2
      t.decimal :interest_amount, precision: 8, scale: 2
      t.boolean :interest_paid
      t.decimal :tax_amount, precision: 8, scale: 2
      t.decimal :net_amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
