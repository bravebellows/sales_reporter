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

ActiveRecord::Schema.define(version: 2020_09_25_203200) do

  create_table "csv_imports", force: :cascade do |t|
    t.text "filename"
    t.boolean "imported"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transaction_item_details", force: :cascade do |t|
    t.datetime "transaction_time"
    t.string "timezone"
    t.string "category"
    t.string "item_type"
    t.decimal "quantity"
    t.string "item"
    t.string "sku"
    t.string "modifiers_applied"
    t.integer "gross_sales_cents", default: 0, null: false
    t.string "gross_sales_currency", default: "USD", null: false
    t.integer "discounts_cents", default: 0, null: false
    t.string "discounts_currency", default: "USD", null: false
    t.integer "net_sales_cents", default: 0, null: false
    t.string "net_sales_currency", default: "USD", null: false
    t.integer "sales_tax_cents", default: 0, null: false
    t.string "sales_tax_currency", default: "USD", null: false
    t.string "transaction_id"
    t.string "payment_id"
    t.string "device_name"
    t.text "notes"
    t.text "details"
    t.string "event_type"
    t.string "location"
    t.string "dining_option"
    t.string "customer_id"
    t.string "customer_name"
    t.string "customer_reference_id"
    t.string "unit_of_measure"
    t.integer "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
