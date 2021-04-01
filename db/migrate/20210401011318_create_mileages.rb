class CreateMileages < ActiveRecord::Migration[6.0]
  def change
    create_table :mileages do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.date :drive_date
      t.decimal :start_mileage, precision: 7, scale: 1
      t.decimal :end_mileage, precision: 7, scale: 1
      t.decimal :total_mileage, precision: 7, scale: 1

      t.timestamps
    end
  end
end
