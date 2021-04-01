class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.references :company_category, null: false, foreign_key: true
      t.string :name, limit: 75
      t.string :address, limit: 100
      t.string :city, limit: 75
      t.references :state, null: false, foreign_key: true
      t.string :zipcode, limit: 6
      t.string :phone, limit: 10
      t.string :fax, limit: 10
      t.string :website_url, limit: 100

      t.timestamps
    end
  end
end
