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

ActiveRecord::Schema.define(version: 20131207221602) do

  create_table "managr_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "assignable_id"
    t.string   "assignable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_categories", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_preferences", force: true do |t|
    t.string   "key"
    t.string   "value"
    t.string   "value_type", default: "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_scheduled_items", force: true do |t|
    t.string   "name"
    t.text     "summary"
    t.integer  "user_id"
    t.integer  "item_id"
    t.string   "item_type"
    t.datetime "starts_on"
    t.datetime "ends_on"
    t.boolean  "complete",  default: false
  end

  create_table "managr_taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_tags", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_tasks", force: true do |t|
    t.string   "title"
    t.text     "summary"
    t.boolean  "complete",    default: false
    t.integer  "category_id"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managr_users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "phone"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "managr_users", ["email"], name: "index_managr_users_on_email", unique: true, using: :btree
  add_index "managr_users", ["reset_password_token"], name: "index_managr_users_on_reset_password_token", unique: true, using: :btree
  add_index "managr_users", ["unlock_token"], name: "index_managr_users_on_unlock_token", unique: true, using: :btree

end
