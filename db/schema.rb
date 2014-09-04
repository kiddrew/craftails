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

ActiveRecord::Schema.define(version: 20140904150216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "bar_ingredients", id: false, force: true do |t|
    t.integer  "bar_id",        null: false
    t.integer  "ingredient_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bar_ingredients", ["bar_id"], name: "index_bar_ingredients_on_bar_id", using: :btree

  create_table "bars", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drink_ingredients", force: true do |t|
    t.integer  "drink_id"
    t.integer  "ingredient_id"
    t.string   "amount"
    t.string   "amount_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drink_ingredients", ["drink_id", "ingredient_id"], name: "index_drink_ingredients_on_drink_id_and_ingredient_id", unique: true, using: :btree
  add_index "drink_ingredients", ["drink_id"], name: "index_drink_ingredients_on_drink_id", using: :btree
  add_index "drink_ingredients", ["ingredient_id"], name: "index_drink_ingredients_on_ingredient_id", using: :btree

  create_table "drinks", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.text     "instructions"
    t.integer  "glass_id"
    t.integer  "garnish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_approved",  default: false
    t.integer  "user_id"
    t.string   "slug"
    t.integer  "garnish2_id"
    t.string   "created_by"
  end

  add_index "drinks", ["is_approved"], name: "index_drinks_on_is_approved", using: :btree
  add_index "drinks", ["name"], name: "index_drinks_on_name", unique: true, using: :btree
  add_index "drinks", ["user_id"], name: "index_drinks_on_user_id", using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "garnishes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glasses", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredient_amount_units", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.boolean  "is_selectable", default: true
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_approved",   default: false
  end

  add_index "ingredients", ["is_approved"], name: "index_ingredients_on_is_approved", using: :btree
  add_index "ingredients", ["is_selectable"], name: "index_ingredients_on_is_selectable", using: :btree
  add_index "ingredients", ["name"], name: "index_ingredients_on_name", unique: true, using: :btree

  create_table "user_ingredients", id: false, force: true do |t|
    t.integer "user_id",       null: false
    t.integer "ingredient_id", null: false
  end

  add_index "user_ingredients", ["user_id"], name: "index_user_ingredients_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
