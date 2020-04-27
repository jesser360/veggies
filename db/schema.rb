# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_27_202955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.integer "amount"
    t.integer "price"
    t.bigint "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_batches_on_farmer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total_price"
    t.bigint "customer_id"
    t.bigint "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["batch_id"], name: "index_orders_on_batch_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  add_foreign_key "batches", "farmers"
  add_foreign_key "orders", "batches"
  add_foreign_key "orders", "customers"
end
