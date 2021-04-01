# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_01_011645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bid_invoices", force: :cascade do |t|
    t.bigint "bid_id", null: false
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bid_id"], name: "index_bid_invoices_on_bid_id"
    t.index ["invoice_id"], name: "index_bid_invoices_on_invoice_id"
  end

  create_table "bid_statuses", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bids", force: :cascade do |t|
    t.bigint "bid_status_id", null: false
    t.bigint "project_site_id", null: false
    t.bigint "company_id", null: false
    t.date "bid_date"
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bid_status_id"], name: "index_bids_on_bid_status_id"
    t.index ["company_id"], name: "index_bids_on_company_id"
    t.index ["project_site_id"], name: "index_bids_on_project_site_id"
  end

  create_table "companies", force: :cascade do |t|
    t.bigint "company_category_id", null: false
    t.string "name", limit: 75
    t.string "address", limit: 100
    t.string "city", limit: 75
    t.bigint "state_id", null: false
    t.string "zipcode", limit: 6
    t.string "phone", limit: 10
    t.string "fax", limit: 10
    t.string "website_url", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_category_id"], name: "index_companies_on_company_category_id"
    t.index ["state_id"], name: "index_companies_on_state_id"
  end

  create_table "company_categories", force: :cascade do |t|
    t.string "name", limit: 50
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expense_categories", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "description", limit: 250
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expense_item_groups", force: :cascade do |t|
    t.bigint "expense_id", null: false
    t.bigint "expense_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_id"], name: "index_expense_item_groups_on_expense_id"
    t.index ["expense_item_id"], name: "index_expense_item_groups_on_expense_item_id"
  end

  create_table "expense_items", force: :cascade do |t|
    t.integer "quantity"
    t.string "name", limit: 150
    t.decimal "amount", precision: 8, scale: 2
    t.decimal "subtotal", precision: 8, scale: 2
    t.decimal "tax", precision: 8, scale: 2
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.bigint "expense_category_id", null: false
    t.bigint "company_id", null: false
    t.date "expense_date"
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_expenses_on_company_id"
    t.index ["expense_category_id"], name: "index_expenses_on_expense_category_id"
  end

  create_table "image_companies", force: :cascade do |t|
    t.bigint "image_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_image_companies_on_company_id"
    t.index ["image_id"], name: "index_image_companies_on_image_id"
  end

  create_table "image_expenses", force: :cascade do |t|
    t.bigint "image_id", null: false
    t.bigint "expense_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_id"], name: "index_image_expenses_on_expense_id"
    t.index ["image_id"], name: "index_image_expenses_on_image_id"
  end

  create_table "image_invoices", force: :cascade do |t|
    t.bigint "image_id", null: false
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_image_invoices_on_image_id"
    t.index ["invoice_id"], name: "index_image_invoices_on_invoice_id"
  end

  create_table "image_users", force: :cascade do |t|
    t.bigint "image_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_image_users_on_image_id"
    t.index ["user_id"], name: "index_image_users_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name", limit: 100
    t.text "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_expenses", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "expense_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expense_id"], name: "index_invoice_expenses_on_expense_id"
    t.index ["invoice_id"], name: "index_invoice_expenses_on_invoice_id"
  end

  create_table "invoice_mileages", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.bigint "mileage_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoice_mileages_on_invoice_id"
    t.index ["mileage_id"], name: "index_invoice_mileages_on_mileage_id"
  end

  create_table "invoice_reports", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.boolean "paid"
    t.date "paid_date"
    t.string "paid_checknum", limit: 10
    t.decimal "loan_amount", precision: 8, scale: 2
    t.boolean "loan_paid"
    t.decimal "project_cost", precision: 8, scale: 2
    t.decimal "interest_amount", precision: 8, scale: 2
    t.boolean "interest_paid"
    t.decimal "tax_amount", precision: 8, scale: 2
    t.decimal "net_amount", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoice_reports_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "project_site_id", null: false
    t.bigint "company_id", null: false
    t.bigint "term_id", null: false
    t.date "start_date"
    t.date "complete_date"
    t.decimal "total", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_invoices_on_company_id"
    t.index ["project_site_id"], name: "index_invoices_on_project_site_id"
    t.index ["term_id"], name: "index_invoices_on_term_id"
  end

  create_table "line_item_groups", force: :cascade do |t|
    t.bigint "line_item_id", null: false
    t.bigint "bid_invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bid_invoice_id"], name: "index_line_item_groups_on_bid_invoice_id"
    t.index ["line_item_id"], name: "index_line_item_groups_on_line_item_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "sku_id", null: false
    t.text "description"
    t.decimal "amount", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sku_id"], name: "index_line_items_on_sku_id"
  end

  create_table "mileages", force: :cascade do |t|
    t.bigint "vehicle_id", null: false
    t.date "drive_date"
    t.decimal "start_mileage", precision: 7, scale: 1
    t.decimal "end_mileage", precision: 7, scale: 1
    t.decimal "total_mileage", precision: 7, scale: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vehicle_id"], name: "index_mileages_on_vehicle_id"
  end

  create_table "project_sites", force: :cascade do |t|
    t.string "address", limit: 100
    t.string "city", limit: 75
    t.bigint "state_id", null: false
    t.string "zipcode", limit: 6
    t.string "access_code", limit: 10
    t.text "map_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_project_sites_on_state_id"
  end

  create_table "skus", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "description", limit: 250
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name", limit: 75
    t.string "abbreviation", limit: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string "name", limit: 50
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_categories", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "description", limit: 100
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.bigint "user_category_id", null: false
    t.bigint "company_id", null: false
    t.string "email", limit: 100
    t.string "password", limit: 250
    t.string "salt", limit: 128
    t.string "first_name", limit: 75
    t.string "last_name", limit: 100
    t.string "phone", limit: 10
    t.string "phone_extension", limit: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["user_category_id"], name: "index_users_on_user_category_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "manufacturer_year"
    t.string "make", limit: 50
    t.string "model", limit: 50
    t.string "sub_model", limit: 50
    t.string "engine", limit: 50
    t.string "notes", limit: 150
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bid_invoices", "bids"
  add_foreign_key "bid_invoices", "invoices"
  add_foreign_key "bids", "bid_statuses"
  add_foreign_key "bids", "companies"
  add_foreign_key "bids", "project_sites"
  add_foreign_key "companies", "company_categories"
  add_foreign_key "companies", "states"
  add_foreign_key "expense_item_groups", "expense_items"
  add_foreign_key "expense_item_groups", "expenses"
  add_foreign_key "expenses", "companies"
  add_foreign_key "expenses", "expense_categories"
  add_foreign_key "image_companies", "companies"
  add_foreign_key "image_companies", "images"
  add_foreign_key "image_expenses", "expenses"
  add_foreign_key "image_expenses", "images"
  add_foreign_key "image_invoices", "images"
  add_foreign_key "image_invoices", "invoices"
  add_foreign_key "image_users", "images"
  add_foreign_key "image_users", "users"
  add_foreign_key "invoice_expenses", "expenses"
  add_foreign_key "invoice_expenses", "invoices"
  add_foreign_key "invoice_mileages", "invoices"
  add_foreign_key "invoice_mileages", "mileages"
  add_foreign_key "invoice_reports", "invoices"
  add_foreign_key "invoices", "companies"
  add_foreign_key "invoices", "project_sites"
  add_foreign_key "invoices", "terms"
  add_foreign_key "line_item_groups", "bid_invoices"
  add_foreign_key "line_item_groups", "line_items"
  add_foreign_key "line_items", "skus"
  add_foreign_key "mileages", "vehicles"
  add_foreign_key "project_sites", "states"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "user_categories"
end
