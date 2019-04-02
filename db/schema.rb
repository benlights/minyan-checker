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

ActiveRecord::Schema.define(version: 2019_04_02_025150) do

  create_table "daily_minyan_links", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "minyan_id"
    t.bigint "user_id"
    t.string "link"
    t.boolean "joining", default: false
    t.date "date"
    t.boolean "notified", default: false
    t.index ["minyan_id"], name: "index_daily_minyan_links_on_minyan_id"
    t.index ["user_id"], name: "index_daily_minyan_links_on_user_id"
  end

  create_table "daily_minyans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "minyan_id"
    t.date "date"
    t.boolean "happening"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "notified", default: false
    t.index ["minyan_id"], name: "index_daily_minyans_on_minyan_id"
  end

  create_table "minyans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.time "time"
    t.string "location"
    t.time "notification_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "minyan_id"
    t.string "contact_method"
    t.string "contact_info", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_minyans", "minyans"
end
