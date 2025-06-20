# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_20_110314) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.integer "status"
    t.string "attachment"
    t.text "notes"
    t.date "created_at_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status"], name: "index_contacts_on_status"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "company_name"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_type", default: 0, null: false
    t.integer "interest_scope", default: 0, null: false
    t.index ["customer_type"], name: "index_customers_on_customer_type"
    t.index ["interest_scope"], name: "index_customers_on_interest_scope"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.decimal "value"
    t.integer "category"
    t.date "last_restock"
    t.bigint "supplier_id", null: false
    t.bigint "production_plan_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_inventory_items_on_category"
    t.index ["order_id"], name: "index_inventory_items_on_order_id"
    t.index ["production_plan_id"], name: "index_inventory_items_on_production_plan_id"
    t.index ["supplier_id"], name: "index_inventory_items_on_supplier_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "production_plan_id", null: false
    t.date "order_date"
    t.date "delivery_date"
    t.integer "quantity"
    t.string "product"
    t.decimal "total"
    t.integer "status"
    t.text "invoice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["production_plan_id"], name: "index_orders_on_production_plan_id"
    t.index ["status"], name: "index_orders_on_status"
  end

  create_table "production_plans", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.integer "duration_days"
    t.string "production_line"
    t.integer "status"
    t.text "notes"
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_production_plans_on_customer_id"
    t.index ["status"], name: "index_production_plans_on_status"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "contact_person"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.integer "delivery_category"
    t.string "rating"
    t.date "contract_start"
    t.date "contract_end"
    t.text "products"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_category"], name: "index_suppliers_on_delivery_category"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.datetime "planned_contact_at"
    t.integer "contact_type"
    t.string "attachment"
    t.bigint "customer_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_tasks_on_customer_id"
  end

  add_foreign_key "inventory_items", "orders"
  add_foreign_key "inventory_items", "production_plans"
  add_foreign_key "inventory_items", "suppliers"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "production_plans"
  add_foreign_key "production_plans", "customers"
  add_foreign_key "tasks", "customers"
end
