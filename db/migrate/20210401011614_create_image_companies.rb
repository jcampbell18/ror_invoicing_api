class CreateImageCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :image_companies do |t|
      t.references :image, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
