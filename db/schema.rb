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

ActiveRecord::Schema.define(version: 20151209130027) do

  create_table "components", force: :cascade do |t|
    t.string   "cName"
    t.integer  "cNumber"
    t.integer  "m_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moduls", force: :cascade do |t|
    t.string   "mName"
    t.integer  "mNumber"
    t.integer  "sp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_breakdown_structures", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_breakdown_structures", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.integer  "reNumber"
    t.string   "reQualification"
    t.string   "reExperience"
    t.decimal  "reQuantity"
    t.integer  "ro_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "roNumber"
    t.string   "roName"
    t.integer  "t_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subproducts", force: :cascade do |t|
    t.string   "spName"
    t.integer  "spNumber"
    t.integer  "pbs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtasks", force: :cascade do |t|
    t.integer  "stNumber"
    t.string   "stName"
    t.integer  "t_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "tNumber"
    t.string   "tName"
    t.integer  "wbs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.integer  "tNumber"
    t.string   "tName"
    t.integer  "rbs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_breakdown_structures", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workpackages", force: :cascade do |t|
    t.integer  "wpNumber"
    t.string   "wpName"
    t.integer  "st_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
