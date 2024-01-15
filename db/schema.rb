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

ActiveRecord::Schema[7.0].define(version: 2024_01_09_071817) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false, comment: "名前"
    t.string "email", default: "", null: false, comment: "メールアドレス"
    t.string "telephone", default: "", null: false, comment: "電話番号"
    t.text "content_inquiry", default: "", null: false, comment: "お問い合わせ内容"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_posts", force: :cascade do |t|
    t.string "title", default: "", null: false, comment: "タイトル"
    t.text "content", default: "", null: false, comment: "本文"
    t.datetime "deleted_at", comment: "論理削除"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_open", default: false, null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.string "name", null: false, comment: "名前"
    t.string "email", default: "", null: false, comment: "メールアドレス"
    t.string "telephone", default: "", null: false, comment: "電話番号"
    t.date "reserve_date1", comment: "予約候補日第1候補"
    t.date "reserve_date2", comment: "予約候補日第2候補"
    t.date "reserve_date3", comment: "予約候補日第3候補"
    t.text "content_inquiry", default: "", null: false, comment: "回答・質問事項"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
