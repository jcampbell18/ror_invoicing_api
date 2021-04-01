class CreateLineItemGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :line_item_groups do |t|
      t.references :line_item, null: false, foreign_key: true
      t.references :bid_invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
