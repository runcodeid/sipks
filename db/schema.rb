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

ActiveRecord::Schema.define(version: 2020_02_15_140949) do

  create_table "action_plans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "city_id"
    t.bigint "year_id"
    t.string "code_action_plans"
    t.string "action_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["city_id"], name: "index_action_plans_on_city_id"
    t.index ["deleted_at"], name: "index_action_plans_on_deleted_at"
    t.index ["slug"], name: "index_action_plans_on_slug", unique: true
    t.index ["year_id"], name: "index_action_plans_on_year_id"
  end

  create_table "b_eights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "action_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notulen_file_name"
    t.string "notulen_content_type"
    t.integer "notulen_file_size"
    t.datetime "notulen_updated_at"
    t.string "daftar_hadir_file_name"
    t.string "daftar_hadir_content_type"
    t.integer "daftar_hadir_file_size"
    t.datetime "daftar_hadir_updated_at"
    t.string "foto_kegiatan_file_name"
    t.string "foto_kegiatan_content_type"
    t.integer "foto_kegiatan_file_size"
    t.datetime "foto_kegiatan_updated_at"
    t.string "materi_file_name"
    t.string "materi_content_type"
    t.integer "materi_file_size"
    t.datetime "materi_updated_at"
    t.string "scan_document_file_name"
    t.string "scan_document_content_type"
    t.integer "scan_document_file_size"
    t.datetime "scan_document_updated_at"
    t.string "scan_document_ttd_file_name"
    t.string "scan_document_ttd_content_type"
    t.integer "scan_document_ttd_file_size"
    t.datetime "scan_document_ttd_updated_at"
    t.string "foto_atau_materi_file_name"
    t.string "foto_atau_materi_content_type"
    t.integer "foto_atau_materi_file_size"
    t.datetime "foto_atau_materi_updated_at"
    t.datetime "deleted_at"
    t.index ["action_plan_id"], name: "index_b_eights_on_action_plan_id"
    t.index ["deleted_at"], name: "index_b_eights_on_deleted_at"
  end

  create_table "b_fours", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "action_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notulen_file_name"
    t.string "notulen_content_type"
    t.integer "notulen_file_size"
    t.datetime "notulen_updated_at"
    t.string "daftar_hadir_file_name"
    t.string "daftar_hadir_content_type"
    t.integer "daftar_hadir_file_size"
    t.datetime "daftar_hadir_updated_at"
    t.string "foto_kegiatan_file_name"
    t.string "foto_kegiatan_content_type"
    t.integer "foto_kegiatan_file_size"
    t.datetime "foto_kegiatan_updated_at"
    t.string "materi_file_name"
    t.string "materi_content_type"
    t.integer "materi_file_size"
    t.datetime "materi_updated_at"
    t.string "scan_document_file_name"
    t.string "scan_document_content_type"
    t.integer "scan_document_file_size"
    t.datetime "scan_document_updated_at"
    t.string "scan_document_ttd_file_name"
    t.string "scan_document_ttd_content_type"
    t.integer "scan_document_ttd_file_size"
    t.datetime "scan_document_ttd_updated_at"
    t.string "foto_atau_materi_file_name"
    t.string "foto_atau_materi_content_type"
    t.integer "foto_atau_materi_file_size"
    t.datetime "foto_atau_materi_updated_at"
    t.datetime "deleted_at"
    t.index ["action_plan_id"], name: "index_b_fours_on_action_plan_id"
    t.index ["deleted_at"], name: "index_b_fours_on_deleted_at"
  end

  create_table "b_twelves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "action_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notulen_file_name"
    t.string "notulen_content_type"
    t.integer "notulen_file_size"
    t.datetime "notulen_updated_at"
    t.string "daftar_hadir_file_name"
    t.string "daftar_hadir_content_type"
    t.integer "daftar_hadir_file_size"
    t.datetime "daftar_hadir_updated_at"
    t.string "foto_kegiatan_file_name"
    t.string "foto_kegiatan_content_type"
    t.integer "foto_kegiatan_file_size"
    t.datetime "foto_kegiatan_updated_at"
    t.string "materi_file_name"
    t.string "materi_content_type"
    t.integer "materi_file_size"
    t.datetime "materi_updated_at"
    t.string "scan_document_file_name"
    t.string "scan_document_content_type"
    t.integer "scan_document_file_size"
    t.datetime "scan_document_updated_at"
    t.string "scan_document_ttd_file_name"
    t.string "scan_document_ttd_content_type"
    t.integer "scan_document_ttd_file_size"
    t.datetime "scan_document_ttd_updated_at"
    t.string "foto_atau_materi_file_name"
    t.string "foto_atau_materi_content_type"
    t.integer "foto_atau_materi_file_size"
    t.datetime "foto_atau_materi_updated_at"
    t.datetime "deleted_at"
    t.index ["action_plan_id"], name: "index_b_twelves_on_action_plan_id"
    t.index ["deleted_at"], name: "index_b_twelves_on_deleted_at"
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_cities_on_deleted_at"
    t.index ["slug"], name: "index_cities_on_slug", unique: true
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "resource"
    t.string "action"
    t.text "description"
    t.boolean "page"
    t.text "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "slug"
    t.index ["deleted_at"], name: "index_permissions_on_deleted_at"
    t.index ["slug"], name: "index_permissions_on_slug", unique: true
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "slug"
    t.index ["deleted_at"], name: "index_roles_on_deleted_at"
    t.index ["slug"], name: "index_roles_on_slug", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "slug"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "years", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_years_on_deleted_at"
    t.index ["slug"], name: "index_years_on_slug", unique: true
  end

  add_foreign_key "action_plans", "cities"
  add_foreign_key "action_plans", "years"
  add_foreign_key "b_eights", "action_plans"
  add_foreign_key "b_fours", "action_plans"
  add_foreign_key "b_twelves", "action_plans"
  add_foreign_key "users", "cities"
end
