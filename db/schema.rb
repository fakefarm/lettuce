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

ActiveRecord::Schema.define(version: 20160430051448) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "starting_balance"
    t.string   "nickname"
    t.string   "bank_name"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "tag"
    t.text     "note"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["family_id"], name: "index_books_on_family_id"
  add_index "books", ["user_id"], name: "index_books_on_user_id"

  create_table "contacts", force: :cascade do |t|
    t.integer  "note_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "name"
    t.string   "frequency"
    t.integer  "target_price"
    t.integer  "category_id"
    t.string   "structure"
    t.string   "reminder_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "expenses", ["family_id"], name: "index_expenses_on_family_id"
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id"

  create_table "liabilities", force: :cascade do |t|
    t.string   "starting_balance"
    t.integer  "interest_rate"
    t.string   "nickname"
    t.string   "bank_name"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "body"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.boolean  "complete"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "vendor_id"
    t.integer  "amount"
    t.integer  "category_id"
    t.integer  "flag_id"
    t.integer  "note_id"
    t.integer  "task_id"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "liability_id"
    t.string   "amount"
    t.integer  "note_id"
    t.integer  "task_id"
    t.integer  "reminder_id"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.integer  "contact_id"
    t.boolean  "archive"
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
