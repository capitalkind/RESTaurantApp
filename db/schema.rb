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

ActiveRecord::Schema.define(version: 20151220011821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "permission"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "guest_count"
    t.integer  "paid_for"
    t.integer  "employee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "groups", ["employee_id"], name: "index_groups_on_employee_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "order_up"
    t.integer  "food_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["food_id"], name: "index_orders_on_food_id", using: :btree
  add_index "orders", ["group_id"], name: "index_orders_on_group_id", using: :btree

  add_foreign_key "groups", "employees"
  add_foreign_key "orders", "foods"
  add_foreign_key "orders", "groups"
end