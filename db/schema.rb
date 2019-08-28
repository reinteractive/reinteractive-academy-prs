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

ActiveRecord::Schema.define(version: 2019_08_27_032250) do

  create_table "assigned_feedbacks", force: :cascade do |t|
    t.integer "idea_id"
    t.integer "feedback_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "feedback"
    t.integer "idea_id"
    t.string "email"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "string"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
  end

  create_table "idea_categories", force: :cascade do |t|
    t.integer "idea_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idea_statuses", force: :cascade do |t|
    t.integer "idea_id"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_status"
  end

  create_table "ideas", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.integer "idea_id"
    t.string "email"
    t.string "password"
    t.integer "status_id"
    t.string "first_name"
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "message"
    t.integer "staff_id"
  end

end
