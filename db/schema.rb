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

ActiveRecord::Schema[8.0].define(version: 2025_09_12_180437) do
  create_table "climbs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "crg_event_id", null: false
    t.integer "station"
    t.string "color"
    t.string "grade"
    t.string "modifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crg_event_id"], name: "index_climbs_on_crg_event_id"
    t.index ["user_id"], name: "index_climbs_on_user_id"
  end

  create_table "crg_event_registrations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "crg_event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crg_event_id"], name: "index_crg_event_registrations_on_crg_event_id"
    t.index ["user_id"], name: "index_crg_event_registrations_on_user_id"
  end

  create_table "crg_events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "full_name"
    t.string "uid"
    t.string "avatar_url"
    t.string "provider"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "climbs", "crg_events"
  add_foreign_key "climbs", "users"
  add_foreign_key "crg_event_registrations", "crg_events"
  add_foreign_key "crg_event_registrations", "users"
end
