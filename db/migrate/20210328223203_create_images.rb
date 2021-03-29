class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :name, limit: 100
      t.text :url

      t.timestamps
    end
  end
end
