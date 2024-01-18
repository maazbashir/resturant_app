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

ActiveRecord::Schema[7.1].define(version: 2024_01_18_094729) do
  create_table "add_status_to_order_items", force: :cascade do |t|
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "code"
    t.float "discount_per"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingrediants", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_discounts", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "discount_id", null: false
    t.integer "promotion_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount_id"], name: "index_order_discounts_on_discount_id"
    t.index ["order_id"], name: "index_order_discounts_on_order_id"
    t.index ["promotion_id"], name: "index_order_discounts_on_promotion_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "pizza_ingrediant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["pizza_ingrediant_id"], name: "index_order_items_on_pizza_ingrediant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status", default: 0
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pizza_ingrediants", force: :cascade do |t|
    t.integer "pizza_id", null: false
    t.integer "ingrediant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingrediant_id"], name: "index_pizza_ingrediants_on_ingrediant_id"
    t.index ["pizza_id"], name: "index_pizza_ingrediants_on_pizza_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "size"
  end

  create_table "promotions", force: :cascade do |t|
    t.string "code"
    t.float "discount_per"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_discounts", "discounts"
  add_foreign_key "order_discounts", "orders"
  add_foreign_key "order_discounts", "promotions"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "pizza_ingrediants"
  add_foreign_key "pizza_ingrediants", "ingrediants"
  add_foreign_key "pizza_ingrediants", "pizzas"
end
