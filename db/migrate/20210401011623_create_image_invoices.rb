class CreateImageInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :image_invoices do |t|
      t.references :image, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
