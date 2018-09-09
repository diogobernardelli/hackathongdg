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

ActiveRecord::Schema.define(version: 2018_09_09_055244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deputies", force: :cascade do |t|
    t.string "full_name"
    t.string "uf"
    t.string "political_party"
    t.string "url_photo"
    t.integer "camara_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camara_id"], name: "index_deputies_on_camara_id"
  end

  create_table "follows", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "deputy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deputy_id"], name: "index_follows_on_deputy_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid_firebase"
    t.string "phone"
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid_firebase"], name: "index_users_on_uid_firebase"
  end

end
