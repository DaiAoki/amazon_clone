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

ActiveRecord::Schema.define(version: 2020_09_13_121851) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", comment: "カテゴリー", force: :cascade do |t|
    t.string "name", null: false, comment: "カテゴリー名"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", comment: "商品", force: :cascade do |t|
    t.string "name", null: false, comment: "商品名"
    t.integer "price", null: false, comment: "金額"
    t.integer "stock", default: 0, null: false, comment: "在庫"
    t.string "image", comment: "商品画像"
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

end
