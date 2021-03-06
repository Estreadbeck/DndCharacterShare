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

ActiveRecord::Schema.define(version: 20180514235615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_character_classes_on_slug", unique: true
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "character_image"
    t.text "backstory", default: "(please input data)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "level", default: 1
    t.string "slug"
    t.bigint "character_class_id"
    t.bigint "race_id"
    t.integer "status", default: 0
    t.bigint "user_id"
    t.text "equipment", default: "(please input data)"
    t.text "inventory", default: "(please input data)"
    t.integer "armor_class"
    t.string "initiative"
    t.integer "speed"
    t.text "notes", default: "(please input data)"
    t.text "personality", default: "(please input data)"
    t.text "ideals", default: "(please input data)"
    t.text "bonds", default: "(please input data)"
    t.text "flaws", default: "(please input data)"
    t.integer "age"
    t.string "height"
    t.string "weight"
    t.string "eyes"
    t.string "skin"
    t.string "hair"
    t.text "allies", default: "(please input data)"
    t.integer "proficiency", default: 2
    t.index ["slug"], name: "index_characters_on_slug", unique: true
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "level"
    t.bigint "character_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_class_id"], name: "index_features_on_character_class_id"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "races", force: :cascade do |t|
    t.string "race_name"
    t.text "race_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_races_on_slug", unique: true
  end

  create_table "stats", force: :cascade do |t|
    t.integer "score"
    t.string "modifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "character_id"
    t.string "name"
    t.index ["character_id"], name: "index_stats_on_character_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "race_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["race_id"], name: "index_traits_on_race_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "roles"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "characters", "character_classes"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
  add_foreign_key "features", "character_classes"
  add_foreign_key "stats", "characters"
  add_foreign_key "traits", "races"
end
