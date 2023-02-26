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

ActiveRecord::Schema[7.0].define(version: 2023_02_24_163040) do
  create_table "compnies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "ticker_symbol", null: false
    t.string "risk_factor", null: false
  end

  create_table "crypto_prices", force: :cascade do |t|
    t.decimal "price"
    t.date "captured_at"
    t.integer "cryptocurrency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cryptocurrency_id"], name: "index_crypto_prices_on_cryptocurrency_id"
  end

  create_table "cryptocurrencies", force: :cascade do |t|
    t.string "name"
    t.date "started_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_prices", force: :cascade do |t|
    t.decimal "price"
    t.date "caputerd_at"
    t.integer "compny_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compny_id"], name: "index_stock_prices_on_compny_id"
  end

  add_foreign_key "crypto_prices", "cryptocurrencies"
  add_foreign_key "stock_prices", "compnies"
end
