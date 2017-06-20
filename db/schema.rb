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

ActiveRecord::Schema.define(version: 20170408053651) do

  create_table "abcs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "branches", force: :cascade do |t|
    t.integer  "designation_id", limit: 4
    t.string   "branch_name",    limit: 255
    t.string   "branch_address", limit: 255
    t.integer  "phoneno",        limit: 8
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "employe_id",     limit: 4
    t.boolean  "is_active"
  end

  add_index "branches", ["designation_id"], name: "index_branches_on_designation_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "category_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "catgories", force: :cascade do |t|
    t.string   "category_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "is_active"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "c_name",     limit: 255
    t.integer  "c_phoneno",  limit: 8
    t.string   "c_email",    limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "is_active"
  end

  create_table "designations", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "is_active"
    t.integer  "employe_id", limit: 4
  end

  create_table "employees", force: :cascade do |t|
    t.string   "e_name",         limit: 255
    t.integer  "e_no",           limit: 8
    t.string   "e_address",      limit: 255
    t.string   "e_email",        limit: 255
    t.integer  "designation_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "employees", ["designation_id"], name: "index_employees_on_designation_id", using: :btree

  create_table "employes", force: :cascade do |t|
    t.integer  "designation_id", limit: 4
    t.string   "e_name",         limit: 255
    t.integer  "e_no",           limit: 8
    t.string   "e_address",      limit: 255
    t.string   "e_email",        limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "branch_id",      limit: 4
    t.boolean  "is_active"
  end

  add_index "employes", ["designation_id"], name: "index_employes_on_designation_id", using: :btree

  create_table "ourservices", force: :cascade do |t|
    t.string   "service_type", limit: 255
    t.integer  "cost",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "a"
  end

  create_table "paks", force: :cascade do |t|
    t.time     "abc"
    t.time     "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payrequests", force: :cascade do |t|
    t.date     "Date"
    t.time     "Time"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "customer_id", limit: 4
    t.boolean  "is_active"
  end

  create_table "services", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.integer  "cost",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "workstaions", force: :cascade do |t|
    t.string   "station_name", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "is_active"
  end

  create_table "xies", force: :cascade do |t|
    t.time     "abc"
    t.time     "Time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xyzs", force: :cascade do |t|
    t.datetime "abc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "branches", "designations"
  add_foreign_key "employes", "designations"
end
