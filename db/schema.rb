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

ActiveRecord::Schema[7.0].define(version: 2022_11_30_102337) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clothe_categories", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_clothe_categories_on_category_id"
    t.index ["clothe_id"], name: "index_clothe_categories_on_clothe_id"
  end

  create_table "clothe_moods", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "mood_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_clothe_moods_on_clothe_id"
    t.index ["mood_id"], name: "index_clothe_moods_on_mood_id"
  end

  create_table "clothe_outfits", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "outfit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_clothe_outfits_on_clothe_id"
    t.index ["outfit_id"], name: "index_clothe_outfits_on_outfit_id"
  end

  create_table "clothe_seasons", force: :cascade do |t|
    t.bigint "clothe_id", null: false
    t.bigint "season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clothe_id"], name: "index_clothe_seasons_on_clothe_id"
    t.index ["season_id"], name: "index_clothe_seasons_on_season_id"
  end

  create_table "clothes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "color_id", null: false
    t.string "name"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_clothes_on_color_id"
    t.index ["user_id"], name: "index_clothes_on_user_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.string "rgb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outfits", force: :cascade do |t|
    t.date "date"
    t.string "today_weather"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_birth"
    t.string "pseudo"
    t.string "first_name"
    t.string "city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clothe_categories", "categories"
  add_foreign_key "clothe_categories", "clothes"
  add_foreign_key "clothe_moods", "clothes"
  add_foreign_key "clothe_moods", "moods"
  add_foreign_key "clothe_outfits", "clothes"
  add_foreign_key "clothe_outfits", "outfits"
  add_foreign_key "clothe_seasons", "clothes"
  add_foreign_key "clothe_seasons", "seasons"
  add_foreign_key "clothes", "colors"
  add_foreign_key "clothes", "users"
end
