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

ActiveRecord::Schema.define(version: 2020_07_13_024007) do

  create_table "base_makes", force: :cascade do |t|
    t.integer "MakeID"
    t.string "MakeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_models", force: :cascade do |t|
    t.integer "ModelID"
    t.string "ModelName"
    t.integer "VehicleTypeID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_sub_models", force: :cascade do |t|
    t.integer "SubModelID"
    t.string "SubModelName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_vehicles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bases", force: :cascade do |t|
    t.integer "Base_VehicleID"
    t.string "YearID"
    t.integer "MakeID"
    t.integer "ModelID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "nickname"
    t.string "make"
    t.string "model"
    t.string "year"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "makes", force: :cascade do |t|
    t.integer "Base_Vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Base_Vehicle_id"], name: "index_makes_on_Base_Vehicle_id"
  end

  create_table "models", force: :cascade do |t|
    t.integer "Make_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Make_id"], name: "index_models_on_Make_id"
  end

  create_table "service_entries", force: :cascade do |t|
    t.string "service"
    t.string "date"
    t.integer "mileage"
    t.text "comments"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_service_entries_on_car_id"
  end

  create_table "sub_models", force: :cascade do |t|
    t.integer "Model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Model_id"], name: "index_sub_models_on_Model_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
