class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :manufacturer_year, limit: 4
      t.string :make, limit: 50
      t.string :model, limit: 50
      t.string :sub_model, limit: 50
      t.string :engine, limit: 50
      t.string :notes, limit: 150

      t.timestamps
    end
  end
end
