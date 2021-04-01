class CreateBidInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :bid_invoices do |t|
      t.references :bid, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
