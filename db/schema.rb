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

ActiveRecord::Schema.define(version: 2018_07_31_013413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.bigint "goods_id"
    t.integer "cards_statuses_id", default: 1
    t.decimal "price", precision: 5, scale: 2, default: "0.0"
    t.decimal "step", precision: 5, scale: 2, default: "0.0"
    t.boolean "suggest", default: false
    t.boolean "consent", default: false
    t.integer "goods_status_sellers_id", default: 1
    t.integer "goods_status_buyers_id", default: 1
    t.integer "goods_categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goods_id"], name: "index_cards_on_goods_id"
  end

  create_table "cards_statuses", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "deals", force: :cascade do |t|
    t.bigint "cards_id"
    t.integer "trade_statuses_id"
    t.bigint "users_id"
    t.boolean "reliability"
    t.decimal "price", precision: 5, scale: 2, default: "0.0"
    t.integer "exchange_count", limit: 2
    t.string "exchange_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cards_id"], name: "index_deals_on_cards_id"
    t.index ["users_id"], name: "index_deals_on_users_id"
  end

  create_table "goods", force: :cascade do |t|
    t.bigint "users_id"
    t.string "name"
    t.string "description"
    t.string "image_list_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_goods_on_users_id"
  end

  create_table "goods_categories", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "goods_status_buyers", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "goods_status_sellers", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "payments", force: :cascade do |t|
    t.string "purpose", limit: 50
    t.bigint "cards_id"
    t.decimal "amount", precision: 5, scale: 2, default: "0.0"
    t.datetime "receipt_date"
    t.datetime "payment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cards_id"], name: "index_payments_on_cards_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "news"
    t.string "description", limit: 100
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trade_statuses", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password_digest"
    t.string "fullname"
    t.string "email"
    t.boolean "processing_pd", default: false
    t.bigint "users_status_id"
    t.boolean "action", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_status_id"], name: "index_users_on_users_status_id"
  end

  create_table "users_statuses", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  add_foreign_key "cards", "goods", column: "goods_id"
  add_foreign_key "deals", "cards", column: "cards_id"
  add_foreign_key "deals", "users", column: "users_id"
  add_foreign_key "goods", "users", column: "users_id"
  add_foreign_key "payments", "cards", column: "cards_id"
end
