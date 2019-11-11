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

ActiveRecord::Schema.define(version: 2019_11_11_034547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
    t.float "longitude"
    t.float "latitude"
    t.string "language"
    t.string "photo"
    t.string "code"
  end

  create_table "culture_tips", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cultures", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cultures_on_country_id"
  end

  create_table "health_tips", force: :cascade do |t|
    t.bigint "health_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["health_id"], name: "index_health_tips_on_health_id"
  end

  create_table "healths", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_healths_on_country_id"
  end

  create_table "interests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_interests_on_country_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.text "english"
    t.text "translation"
    t.bigint "vocabulary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vocabulary_id"], name: "index_phrases_on_vocabulary_id"
  end

  create_table "pins", force: :cascade do |t|
    t.bigint "place_id"
    t.float "latitude"
    t.float "longtitude"
    t.text "description"
    t.string "address"
    t.string "photo"
    t.string "title"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_pins_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.string "link"
    t.string "city"
    t.string "name"
    t.index ["country_id"], name: "index_places_on_country_id"
  end

  create_table "user_phrases", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "phrase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phrase_id"], name: "index_user_phrases_on_phrase_id"
    t.index ["user_id"], name: "index_user_phrases_on_user_id"
  end

  create_table "user_places", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "place_id"
    t.index ["country_id"], name: "index_user_places_on_country_id"
    t.index ["place_id"], name: "index_user_places_on_place_id"
    t.index ["user_id"], name: "index_user_places_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "token"
    t.datetime "token_expiry"
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.string "travel_interests"
    t.string "visited"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "icon"
    t.string "name"
    t.bigint "health_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["health_id"], name: "index_vaccines_on_health_id"
  end

  create_table "visa_types", force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.bigint "visa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visa_id"], name: "index_visa_types_on_visa_id"
  end

  create_table "visas", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_visas_on_country_id"
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_visits_on_country_id"
    t.index ["user_id"], name: "index_visits_on_user_id"
  end

  create_table "vocabularies", force: :cascade do |t|
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_vocabularies_on_country_id"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "cultures", "countries"
  add_foreign_key "health_tips", "healths"
  add_foreign_key "healths", "countries"
  add_foreign_key "interests", "countries"
  add_foreign_key "interests", "users"
  add_foreign_key "phrases", "vocabularies"
  add_foreign_key "pins", "places"
  add_foreign_key "places", "countries"
  add_foreign_key "user_phrases", "phrases"
  add_foreign_key "user_phrases", "users"
  add_foreign_key "user_places", "countries"
  add_foreign_key "user_places", "places"
  add_foreign_key "user_places", "users"
  add_foreign_key "vaccines", "healths"
  add_foreign_key "visa_types", "visas"
  add_foreign_key "visas", "countries"
  add_foreign_key "visits", "countries"
  add_foreign_key "visits", "users"
  add_foreign_key "vocabularies", "countries"
end
