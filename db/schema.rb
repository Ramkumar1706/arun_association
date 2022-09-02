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

ActiveRecord::Schema[7.0].define(version: 2022_09_02_064613) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "telephone"
    t.integer "customer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "asuserid"
  end

  create_table "designs", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.datetime "priority_at", precision: nil
    t.string "priority_number"
    t.string "indian_application_number"
    t.datetime "filed_at", precision: nil
    t.string "title"
    t.integer "deadline_option"
    t.string "deadline"
    t.datetime "compiled_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_designs_on_customer_id"
  end

  create_table "nbas", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "nba_number"
    t.datetime "abs_at", precision: nil
    t.string "indian_application_number"
    t.datetime "filed_at", precision: nil
    t.string "title"
    t.integer "deadline_option"
    t.string "deadline"
    t.datetime "compiled_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_nbas_on_customer_id"
  end

  create_table "patents", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.datetime "priority_at", precision: nil
    t.string "priority_number"
    t.string "indian_application_number"
    t.datetime "filed_at", precision: nil
    t.string "title"
    t.integer "deadline_option"
    t.string "deadline"
    t.datetime "compiled_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_patents_on_customer_id"
  end

  create_table "trademarks", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.datetime "priority_at", precision: nil
    t.string "priority_number"
    t.string "indian_application_number"
    t.datetime "filed_at", precision: nil
    t.string "title"
    t.integer "deadline_option"
    t.string "deadline"
    t.datetime "compiled_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_trademarks_on_customer_id"
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

  add_foreign_key "designs", "customers"
  add_foreign_key "nbas", "customers"
  add_foreign_key "patents", "customers"
  add_foreign_key "trademarks", "customers"
end
