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

ActiveRecord::Schema.define(version: 20170421204828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "costume_detachments", force: :cascade do |t|
    t.integer  "costume_id"
    t.integer  "detachment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["costume_id"], name: "index_costume_detachments_on_costume_id", using: :btree
    t.index ["detachment_id"], name: "index_costume_detachments_on_detachment_id", using: :btree
  end

  create_table "costumes", force: :cascade do |t|
    t.string   "name"
    t.string   "detachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detachments", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "info"
    t.string   "coordinator"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
  end

  create_table "member_costumes", force: :cascade do |t|
    t.integer  "costume_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["costume_id"], name: "index_member_costumes_on_costume_id", using: :btree
    t.index ["member_id"], name: "index_member_costumes_on_member_id", using: :btree
  end

  create_table "member_events", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_member_events_on_event_id", using: :btree
    t.index ["member_id"], name: "index_member_events_on_member_id", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "tkid"
    t.string   "location"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "member_costumes", "costumes"
  add_foreign_key "member_costumes", "members"
  add_foreign_key "member_events", "events"
  add_foreign_key "member_events", "members"
end
