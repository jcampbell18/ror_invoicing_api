class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      # t.references :bid, null: false, foreign_key: true
      t.references :project_site, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.references :term, null: false, foreign_key: true
      t.date :start_date
      t.date :complete_date
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
