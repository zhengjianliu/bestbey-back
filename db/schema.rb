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

ActiveRecord::Schema.define(version: 2020_11_08_191432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_option_values", force: :cascade do |t|
    t.string "name"
    t.bigint "product_option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_option_id"], name: "index_product_option_values_on_product_option_id"
  end

  create_table "product_options", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_options_on_product_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "sku_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["sku_id"], name: "index_product_orders_on_sku_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "rating"
    t.string "category"
    t.string "frontimg"
    t.string "sideimg"
    t.string "backimg"
    t.string "brand"
    t.string "additional_specs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skus", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.bigint "product_option_id", null: false
    t.bigint "product_option_value_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.index ["product_id"], name: "index_skus_on_product_id"
    t.index ["product_option_id"], name: "index_skus_on_product_option_id"
    t.index ["product_option_value_id"], name: "index_skus_on_product_option_value_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "firstname"
    t.string "lastname"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "users"
  add_foreign_key "product_option_values", "product_options"
  add_foreign_key "product_options", "products"
  add_foreign_key "product_orders", "orders"
  add_foreign_key "product_orders", "skus"
  add_foreign_key "skus", "product_option_values"
  add_foreign_key "skus", "product_options"
  add_foreign_key "skus", "products"
end
