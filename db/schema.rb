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

ActiveRecord::Schema.define(version: 20151113230355) do

  create_table "comments", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["recipe_id"], name: "index_comments_on_recipe_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "ingredient_sets", force: :cascade do |t|
    t.string   "name"
    t.text     "directions"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredient_sets", ["recipe_id"], name: "index_ingredient_sets_on_recipe_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "measurement"
    t.integer  "ingredient_set_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "ingredients", ["ingredient_set_id"], name: "index_ingredients_on_ingredient_set_id"

  create_table "photos", force: :cascade do |t|
    t.string   "filename"
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["recipe_id"], name: "index_photos_on_recipe_id"
  add_index "photos", ["user_id"], name: "index_photos_on_user_id"

  create_table "recipe_tags", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recipe_tags", ["recipe_id"], name: "index_recipe_tags_on_recipe_id"
  add_index "recipe_tags", ["tag_id"], name: "index_recipe_tags_on_tag_id"

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.float    "prep_time_minutes"
    t.string   "yield"
    t.float    "cook_time_minutes"
    t.text     "summary"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "recipes", ["user_id"], name: "index_recipes_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yums", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "yums", ["recipe_id"], name: "index_yums_on_recipe_id"
  add_index "yums", ["user_id"], name: "index_yums_on_user_id"

end
