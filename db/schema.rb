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

ActiveRecord::Schema.define(version: 20150507115852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", id: :serial, force: :cascade do |t|
    t.string "street", limit: 255
    t.string "number", limit: 255
    t.string "zip", limit: 255
    t.string "description", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "country_id"
    t.integer "city_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
    t.index ["country_id"], name: "index_addresses_on_country_id"
  end

  create_table "announcements", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "title", limit: 255
    t.string "body", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements_tags", id: false, force: :cascade do |t|
    t.integer "announcement_id"
    t.integer "tag_id"
  end

  create_table "categories", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
  end

  create_table "cities", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "body", limit: 255
    t.integer "announcement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "description", limit: 255
    t.string "category", limit: 255
  end

  create_table "contacts", id: :serial, force: :cascade do |t|
    t.string "content", limit: 255
    t.string "description", limit: 255
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "category_id"
    t.index ["category_id"], name: "index_contacts_on_category_id"
  end

  create_table "educations", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "school", limit: 255
    t.date "start_date"
    t.date "end_date"
    t.string "field", limit: 255
    t.string "grade", limit: 255
    t.string "activities", limit: 255
    t.string "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "title", limit: 255
    t.date "start_date"
    t.date "end_date"
    t.string "description", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "field_of_work", limit: 255
    t.string "country_id"
    t.integer "city_id"
    t.integer "company_id"
    t.index ["city_id"], name: "index_experiences_on_city_id"
    t.index ["company_id"], name: "index_experiences_on_company_id"
    t.index ["country_id"], name: "index_experiences_on_country_id"
  end

  create_table "interests", id: :serial, force: :cascade do |t|
    t.string "title", limit: 255
    t.string "description", limit: 255
    t.integer "initiator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "interest_id"
  end

  create_table "languages", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "name", limit: 255
    t.integer "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lbgs", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lbgs_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "lbg_id"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.integer "taggable_id"
    t.string "taggable_type", limit: 255
    t.integer "tagger_id"
    t.string "tagger_type", limit: 255
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.string "surname", limit: 255
    t.string "old_surname", limit: 255
    t.string "nickname", limit: 255
    t.date "birth_date"
    t.integer "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.string "uuid", limit: 255
    t.datetime "visited_announcements_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
