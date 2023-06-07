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

ActiveRecord::Schema[7.0].define(version: 2023_06_06_131442) do
  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "telephone", default: "", null: false
    t.string "content_inquiry", default: "", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "telephone", default: "", null: false
    t.string "content_inquiry", default: "", null: false
  end

  create_table "spaers", force: :cascade do |t|
    t.integer "reserve_id"
    t.datetime "date1", null: false
    t.datetime "date2"
    t.datetime "date3"
    t.index ["reserve_id"], name: "index_spaers_on_reserve_id"
  end

  add_foreign_key "spaers", "reserves", column: "reserve_id"
end
