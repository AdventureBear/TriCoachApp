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

ActiveRecord::Schema.define(version: 20140404033925) do

  create_table "athletes", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "image_file_name"
    t.integer  "user_id"
  end

  create_table "raceregs", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.string   "priority"
    t.text     "comment"
    t.integer  "athlete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "race_id"
  end

  add_index "raceregs", ["athlete_id"], name: "index_raceregs_on_athlete_id"

  create_table "races", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.string   "race_url"
    t.decimal  "swim_distance"
    t.string   "swim_units"
    t.decimal  "bike_distance"
    t.string   "bike_units"
    t.decimal  "run_distance"
    t.string   "run_units"
    t.text     "race_category"
    t.decimal  "race_distance_total"
    t.date     "race_date"
    t.text     "city"
    t.text     "state"
    t.decimal  "zip_code"
    t.decimal  "price",               precision: 6, scale: 2
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.boolean  "coach",           default: false
    t.boolean  "athlete",         default: true
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "image_file_name"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
  end

end
