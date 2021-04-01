class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.references :bid_status, null: false, foreign_key: true
      t.references :project_site, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.date :bid_date
      t.decimal :total, precision: 8, scale: 2

      t.timestamps
    end
  end
end
