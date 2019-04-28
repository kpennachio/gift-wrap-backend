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

ActiveRecord::Schema.define(version: 2019_04_28_220713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "year"
    t.decimal "budget", precision: 12, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_budgets_on_user_id"
  end

  create_table "event_gift_ideas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.integer "gift_idea_id"
    t.index ["event_id"], name: "index_event_gift_ideas_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "occasion"
    t.date "date"
    t.string "notes"
    t.string "registry_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "notes"
    t.string "image"
    t.decimal "list_price", precision: 12, scale: 2
    t.string "store"
    t.string "link"
    t.string "age_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gifts_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "person_gift_events", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "event_id"
    t.bigint "gift_id"
    t.decimal "gift_actual_cost", precision: 12, scale: 2
    t.integer "price_min"
    t.integer "price_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_person_gift_events_on_event_id"
    t.index ["gift_id"], name: "index_person_gift_events_on_gift_id"
    t.index ["person_id"], name: "index_person_gift_events_on_person_id"
  end

  create_table "person_gift_ideas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gift_idea_id"
    t.bigint "person_id"
    t.index ["person_id"], name: "index_person_gift_ideas_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "email_reminder"
  end

  add_foreign_key "budgets", "users"
  add_foreign_key "event_gift_ideas", "events"
  add_foreign_key "event_gift_ideas", "gifts", column: "gift_idea_id"
  add_foreign_key "events", "users"
  add_foreign_key "gifts", "users"
  add_foreign_key "people", "users"
  add_foreign_key "person_gift_events", "events"
  add_foreign_key "person_gift_events", "gifts"
  add_foreign_key "person_gift_events", "people"
  add_foreign_key "person_gift_ideas", "gifts", column: "gift_idea_id"
  add_foreign_key "person_gift_ideas", "people"
end
