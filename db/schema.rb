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

ActiveRecord::Schema.define(version: 20150902080549) do

  create_table "ai_plug_logs", force: true do |t|
    t.integer  "sensor_id"
    t.integer  "outlet_id"
    t.string   "attrid_val"
    t.datetime "date_time"
    t.string   "user_name"
    t.string   "device"
    t.datetime "install_time"
    t.float    "standby_watt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ai_plug_logs", ["sensor_id"], name: "index_ai_plug_logs_on_sensor_id"

  create_table "air_quality_logs", force: true do |t|
    t.integer  "sensor_id"
    t.float    "value"
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "air_quality_logs", ["sensor_id"], name: "index_air_quality_logs_on_sensor_id"

  create_table "humidity_logs", force: true do |t|
    t.integer  "sensor_id"
    t.float    "value"
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "humidity_logs", ["sensor_id"], name: "index_humidity_logs_on_sensor_id"

  create_table "illuminance_logs", force: true do |t|
    t.integer  "sensor_id"
    t.float    "value"
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "illuminance_logs", ["sensor_id"], name: "index_illuminance_logs_on_sensor_id"

  create_table "leo_plug_logs", force: true do |t|
    t.integer  "sensor_id"
    t.string   "outlet_id"
    t.datetime "date_time"
    t.string   "device"
    t.float    "standby_watt"
    t.float    "voltage"
    t.float    "amp"
    t.float    "power"
    t.float    "energy"
    t.boolean  "power_on_off"
    t.string   "reactive_power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leo_plug_logs", ["sensor_id"], name: "index_leo_plug_logs_on_sensor_id"

  create_table "leo_plugs", force: true do |t|
    t.string   "mac"
    t.string   "school"
    t.string   "brand"
    t.string   "voltage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leo_plugs", ["school"], name: "index_leo_plugs_on_school"

  create_table "rooms", force: true do |t|
    t.string   "label"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["school_id"], name: "index_rooms_on_school_id"

  create_table "schools", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensors", force: true do |t|
    t.integer  "type_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sensors", ["room_id"], name: "index_sensors_on_room_id"
  add_index "sensors", ["type_id"], name: "index_sensors_on_type_id"

  create_table "temperature_logs", force: true do |t|
    t.integer  "sensor_id"
    t.float    "value"
    t.datetime "date_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "temperature_logs", ["sensor_id"], name: "index_temperature_logs_on_sensor_id"

  create_table "types", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
