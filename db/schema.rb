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

ActiveRecord::Schema[7.0].define(version: 2023_10_10_090720) do
  create_table "allocation_types", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "approvals", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.bigint "leave_id", null: false
    t.bigint "leave_type_id", null: false
    t.bigint "leave_status_id", null: false
    t.bigint "employee_id", null: false
    t.integer "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "from_Date"
    t.date "to_Date"
    t.float "total_Days"
    t.string "comment"
    t.index ["employee_id"], name: "index_approvals_on_employee_id"
    t.index ["leave_id"], name: "index_approvals_on_leave_id"
    t.index ["leave_status_id"], name: "index_approvals_on_leave_status_id"
    t.index ["leave_type_id"], name: "index_approvals_on_leave_type_id"
  end

  create_table "categories", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "category_values", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "value_id", null: false
    t.bigint "skhokho_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_values_on_category_id"
    t.index ["skhokho_id"], name: "index_category_values_on_skhokho_id"
    t.index ["value_id"], name: "index_category_values_on_value_id"
  end

  create_table "employee_roles", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.date "hired_date"
    t.date "birthday"
    t.integer "line_manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.integer "region_id"
    t.boolean "isAdmin"
    t.boolean "isActive"
    t.index ["region_id"], name: "fk_employees_region"
  end

  create_table "holidays", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "region_id", null: false
    t.date "holiday_date", null: false
    t.string "holiday_name", null: false
    t.index ["region_id"], name: "region_id"
  end

  create_table "leave_accruals", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.float "days_allocated"
    t.bigint "employee_id", null: false
    t.bigint "period_type_id", null: false
    t.bigint "leave_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_leave_accruals_on_employee_id"
    t.index ["leave_type_id"], name: "index_leave_accruals_on_leave_type_id"
    t.index ["period_type_id"], name: "index_leave_accruals_on_period_type_id"
  end

  create_table "leave_attachments", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "leave_id"
    t.string "filename"
    t.string "attachment_link"
  end

  create_table "leave_histories", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.text "comment"
    t.bigint "leave_id", null: false
    t.bigint "leave_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leave_id"], name: "index_leave_histories_on_leave_id"
    t.index ["leave_status_id"], name: "index_leave_histories_on_leave_status_id"
  end

  create_table "leave_statuses", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_types", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaves", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "from_date"
    t.date "to_date"
    t.boolean "from_half"
    t.boolean "to_half"
    t.float "total_days"
    t.string "description"
    t.bigint "leave_type_id", null: false
    t.bigint "employee_id", null: false
    t.bigint "leave_status_id", null: false
    t.bigint "allocation_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment"
    t.index ["allocation_type_id"], name: "index_leaves_on_allocation_type_id"
    t.index ["employee_id"], name: "index_leaves_on_employee_id"
    t.index ["leave_status_id"], name: "index_leaves_on_leave_status_id"
    t.index ["leave_type_id"], name: "index_leaves_on_leave_type_id"
  end

  create_table "period_types", charset: "utf8", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "description"
    t.string "abbreviation", limit: 50
  end

  create_table "roles", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sharepoint", id: false, charset: "utf8", force: :cascade do |t|
    t.string "Created", limit: 32
    t.integer "ID"
    t.string "Title", limit: 64
    t.string "Employee", limit: 32
    t.string "email", limit: 200
    t.string "Leave Type", limit: 32
    t.string "FromDate", limit: 16
    t.string "ToDate", limit: 16
    t.string "Totaldays", limit: 8
    t.string "Explanation", limit: 128
    t.string "Attachment", limit: 256
    t.string "IsAllocation", limit: 4
  end

  create_table "skhokhos", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.date "cardDate"
    t.integer "skhokhoCreator"
    t.bigint "employee_id", null: false
    t.string "comment"
    t.boolean "processed"
    t.bigint "voucher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_skhokhos_on_employee_id"
    t.index ["voucher_id"], name: "index_skhokhos_on_voucher_id"
  end

  create_table "values", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vouchers", charset: "latin1", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.string "description"
    t.string "comment"
    t.boolean "processed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_vouchers_on_employee_id"
  end

  add_foreign_key "approvals", "employees"
  add_foreign_key "approvals", "leave_statuses"
  add_foreign_key "approvals", "leave_types"
  add_foreign_key "approvals", "leaves", column: "leave_id"
  add_foreign_key "category_values", "categories"
  add_foreign_key "category_values", "skhokhos"
  add_foreign_key "category_values", "values"
  add_foreign_key "employees", "regions", name: "fk_employees_region"
  add_foreign_key "holidays", "regions", name: "holidays_ibfk_1"
  add_foreign_key "leave_accruals", "employees"
  add_foreign_key "leave_accruals", "leave_types"
  add_foreign_key "leave_accruals", "period_types"
  add_foreign_key "leave_histories", "leave_statuses"
  add_foreign_key "leave_histories", "leaves", column: "leave_id"
  add_foreign_key "leaves", "allocation_types"
  add_foreign_key "leaves", "employees"
  add_foreign_key "leaves", "leave_statuses"
  add_foreign_key "leaves", "leave_types"
  add_foreign_key "skhokhos", "employees"
  add_foreign_key "skhokhos", "vouchers"
  add_foreign_key "vouchers", "employees"
end
