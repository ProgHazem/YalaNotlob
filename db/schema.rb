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

ActiveRecord::Schema.define(version: 2017_04_04_181204) do

  create_table "friendships", force: :cascade do |t|
    t.string "friendable_type"
    t.integer "friendable_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "blocker_id"
    t.integer "status"
    t.index ["friendable_type", "friendable_id"], name: "index_friendships_on_friendable_type_and_friendable_id"
  end

  create_table "gruops", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gruops_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gruop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gruop_id"], name: "index_members_on_gruop_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "event"
    t.integer "user_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_notifications_on_order_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "ordermembers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item"
    t.integer "amount"
    t.integer "price"
    t.string "comment"
    t.index ["order_id"], name: "index_ordermembers_on_order_id"
    t.index ["user_id"], name: "index_ordermembers_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "restaurant"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
