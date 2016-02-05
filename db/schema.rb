# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160204052147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "adres"
    t.string   "phone"
    t.string   "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "kind_id"
    t.integer  "price_group_id"
  end

  add_index "customers", ["kind_id"], name: "index_customers_on_kind_id", using: :btree
  add_index "customers", ["price_group_id"], name: "index_customers_on_price_group_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "adres"
    t.string   "phone"
    t.string   "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
  end

  add_index "locations", ["customer_id"], name: "index_locations_on_customer_id", using: :btree

  create_table "price_group_lines", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "item_id"
    t.integer  "price_group_id"
    t.integer  "amount"
    t.decimal  "price"
  end

  add_index "price_group_lines", ["item_id"], name: "index_price_group_lines_on_item_id", using: :btree
  add_index "price_group_lines", ["price_group_id"], name: "index_price_group_lines_on_price_group_id", using: :btree

  create_table "price_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "kinds"
  add_foreign_key "customers", "price_groups"
  add_foreign_key "locations", "customers"
  add_foreign_key "price_group_lines", "items"
  add_foreign_key "price_group_lines", "price_groups"
end
