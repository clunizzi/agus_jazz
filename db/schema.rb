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

ActiveRecord::Schema.define(version: 20151126151906) do

  create_table "concerts", force: :cascade do |t|
    t.string   "place"
    t.datetime "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "recording"
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "musician_id"
  end

  add_index "instruments", ["name"], name: "index_instruments_on_name", unique: true

  create_table "musicians", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "musicians", ["name"], name: "index_musicians_on_name", unique: true

  create_table "recordings", force: :cascade do |t|
    t.integer  "musician_id"
    t.integer  "concert_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recordings", ["concert_id"], name: "index_recordings_on_concert_id"
  add_index "recordings", ["musician_id", "concert_id"], name: "index_recordings_on_musician_id_and_concert_id", unique: true
  add_index "recordings", ["musician_id"], name: "index_recordings_on_musician_id"

end
