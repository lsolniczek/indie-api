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

ActiveRecord::Schema.define(version: 20170720222021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_keys", force: :cascade do |t|
    t.string "key"
    t.bigint "game_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transaction_id"
    t.index ["game_id"], name: "index_game_keys_on_game_id"
    t.index ["transaction_id"], name: "index_game_keys_on_transaction_id"
    t.index ["user_id"], name: "index_game_keys_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "description"
    t.money "original_price", scale: 2
    t.money "sale_price", scale: 2
    t.float "sale_percentage"
    t.date "release_date"
    t.integer "time"
    t.integer "players"
    t.integer "platform"
    t.integer "os"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "transaction_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "uuid"
    t.integer "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email", "uuid"], name: "index_users_on_email_and_uuid"
  end

end
