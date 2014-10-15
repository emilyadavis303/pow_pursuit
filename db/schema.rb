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

ActiveRecord::Schema.define(version: 20141015172349) do

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "resort_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resorts", force: true do |t|
    t.string   "name"
    t.string   "snotel_station"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "daily_snowfall",     default: 0, null: false
    t.integer  "three_day_snowfall", default: 0, null: false
    t.integer  "seven_day_snowfall", default: 0, null: false
    t.integer  "lat"
    t.integer  "lng"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "provider"
    t.string "uid"
  end

end
