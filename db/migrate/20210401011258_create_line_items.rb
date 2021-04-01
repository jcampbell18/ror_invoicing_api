class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references :sku, null: false, foreign_key: true
      t.text :description
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
