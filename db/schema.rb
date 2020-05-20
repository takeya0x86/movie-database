# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_20_182004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "directors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "original_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "movies_count", default: 0, null: false
    t.integer "movie2s_count", default: 0, null: false
    t.integer "movie3s_count", default: 0, null: false
    t.integer "movie4s_count", default: 0, null: false
    t.integer "movie5s_count", default: 0, null: false
    t.index ["movie2s_count"], name: "index_directors_on_movie2s_count"
    t.index ["movie3s_count"], name: "index_directors_on_movie3s_count"
    t.index ["movie4s_count"], name: "index_directors_on_movie4s_count"
    t.index ["movie5s_count"], name: "index_directors_on_movie5s_count"
    t.index ["movies_count"], name: "index_directors_on_movies_count"
    t.index ["name"], name: "index_directors_on_name"
  end

  create_table "movies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title", null: false
    t.date "release_date", null: false
    t.uuid "director_id"
    t.uuid "series_id"
    t.integer "running_time"
    t.string "original_title"
    t.string "english_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "director2_id"
    t.uuid "director3_id"
    t.uuid "director4_id"
    t.uuid "director5_id"
    t.index ["director2_id"], name: "index_movies_on_director2_id"
    t.index ["director3_id"], name: "index_movies_on_director3_id"
    t.index ["director4_id"], name: "index_movies_on_director4_id"
    t.index ["director5_id"], name: "index_movies_on_director5_id"
    t.index ["director_id"], name: "index_movies_on_director_id"
    t.index ["release_date"], name: "index_movies_on_release_date"
    t.index ["series_id"], name: "index_movies_on_series_id"
    t.index ["title"], name: "index_movies_on_title"
  end

  create_table "series", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "original_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "movies_count", default: 0, null: false
    t.index ["movies_count"], name: "index_series_on_movies_count"
    t.index ["name"], name: "index_series_on_name"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "movies", "directors"
  add_foreign_key "movies", "directors", column: "director2_id"
  add_foreign_key "movies", "directors", column: "director3_id"
  add_foreign_key "movies", "directors", column: "director4_id"
  add_foreign_key "movies", "directors", column: "director5_id"
  add_foreign_key "movies", "series"
end
