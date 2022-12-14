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

ActiveRecord::Schema.define(version: 2022_08_16_055810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "deal_menu_items", force: :cascade do |t|
    t.bigint "deal_id", null: false
    t.bigint "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_deal_menu_items_on_deal_id"
    t.index ["menu_item_id"], name: "index_deal_menu_items_on_menu_item_id"
  end

  create_table "deals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "rate"
    t.string "expirationDate"
    t.string "discountable_type", null: false
    t.bigint "discountable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discountable_type", "discountable_id"], name: "index_discounts_on_discountable"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "employeemail"
    t.string "phoneNo"
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "manager_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["manager_id"], name: "index_employees_on_manager_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "linked_items", force: :cascade do |t|
    t.string "linkeditemable_type", null: false
    t.bigint "linkeditemable_id", null: false
    t.bigint "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["linkeditemable_type", "linkeditemable_id"], name: "index_linked_items_on_linkeditemable"
    t.index ["menu_id"], name: "index_linked_items_on_menu_id"
  end

  create_table "menu_addons", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_menu_addons_on_menu_item_id"
  end

  create_table "menu_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "quantity"
    t.bigint "menu_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_category_id"], name: "index_menu_items_on_menu_category_id"
  end

  create_table "menu_options", force: :cascade do |t|
    t.string "name"
    t.bigint "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "menu_order_option_id", null: false
    t.index ["menu_item_id"], name: "index_menu_options_on_menu_item_id"
    t.index ["menu_order_option_id"], name: "index_menu_options_on_menu_order_option_id"
  end

  create_table "menu_order_addons", force: :cascade do |t|
    t.bigint "menu_addon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_addon_id"], name: "index_menu_order_addons_on_menu_addon_id"
  end

  create_table "menu_order_options", force: :cascade do |t|
    t.bigint "menu_options_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_options_id"], name: "index_menu_order_options_on_menu_options_id"
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "menu_item_id", null: false
    t.string "orderitemable_type", null: false
    t.bigint "orderitemable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_order_items_on_menu_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["orderitemable_type", "orderitemable_id"], name: "index_order_items_on_orderitemable"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "phoneNo"
    t.integer "rating"
    t.integer "cutPercent"
    t.string "location"
    t.integer "postalCode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "startTime"
    t.string "EndTime"
    t.string "status"
    t.bigint "admin_user_id"
    t.index ["admin_user_id"], name: "index_restaurants_on_admin_user_id"
  end

  add_foreign_key "deal_menu_items", "deals"
  add_foreign_key "deal_menu_items", "menu_items"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "linked_items", "menus"
  add_foreign_key "menu_addons", "menu_items"
  add_foreign_key "menu_items", "menu_categories"
  add_foreign_key "menu_options", "menu_items"
  add_foreign_key "menu_options", "menu_order_options"
  add_foreign_key "menu_order_addons", "menu_addons"
  add_foreign_key "menu_order_options", "menu_options", column: "menu_options_id"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "order_items", "menu_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "restaurants"
end
