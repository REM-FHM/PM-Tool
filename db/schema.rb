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

ActiveRecord::Schema.define(version: 20160127163157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.integer  "modul_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delphi_estimations", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estimation_templates", force: :cascade do |t|
    t.integer  "form_template_id"
    t.integer  "workpackage_id"
    t.string   "comment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "estimations", force: :cascade do |t|
    t.integer  "expert_form_id"
    t.integer  "workpackage_id"
    t.integer  "duration"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "expert_forms", force: :cascade do |t|
    t.integer  "round_id"
    t.string   "expertName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_templates", force: :cascade do |t|
    t.integer  "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.integer  "roadmap_id"
    t.integer  "component_id"
    t.datetime "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "moduls", force: :cascade do |t|
    t.string   "name"
    t.integer  "subproduct_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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

  create_table "ram_entries", force: :cascade do |t|
    t.integer  "ram_id"
    t.integer  "workpackage_id"
    t.integer  "component_id"
    t.integer  "resource_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "resource_allocation_matrices", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_breakdown_structures", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.integer  "role_id"
    t.string   "qualification"
    t.string   "experience"
    t.decimal  "quantitiy"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "roadmaps", force: :cascade do |t|
    t.integer  "p_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "delphiEstimation_id"
    t.integer  "count"
    t.boolean  "closed"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "subproducts", force: :cascade do |t|
    t.string   "name"
    t.integer  "pbs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subtasks", force: :cascade do |t|
    t.string   "name"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.integer  "wbs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
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
    t.string   "name"
    t.integer  "subtask_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
