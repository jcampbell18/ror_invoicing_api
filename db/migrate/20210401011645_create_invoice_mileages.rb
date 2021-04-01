class CreateInvoiceMileages < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_mileages do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :mileage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
