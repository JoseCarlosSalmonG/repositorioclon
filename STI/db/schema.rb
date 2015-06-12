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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150612024854) do
=======
ActiveRecord::Schema.define(version: 20150612025518) do
>>>>>>> d4befa6c0ecc1ced80f0c1841230a0597eb14200
=======
ActiveRecord::Schema.define(version: 20150612030243) do
>>>>>>> 04c981c19c124ddf161cb62f870d4cc42b0e389a

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "surnames"
    t.string   "DNI"
    t.string   "phone"
    t.date     "birth"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id", using: :btree

  create_table "entrees", force: true do |t|
    t.string   "name"
    t.string   "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locals", ["city_id"], name: "index_locals_on_city_id", using: :btree

  create_table "payments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservationdetails", force: true do |t|
    t.integer  "quantityentree"
    t.integer  "quantitycourse"
    t.integer  "reservation_id"
    t.integer  "entree_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservationdetails", ["course_id"], name: "index_reservationdetails_on_course_id", using: :btree
  add_index "reservationdetails", ["entree_id"], name: "index_reservationdetails_on_entree_id", using: :btree
  add_index "reservationdetails", ["reservation_id"], name: "index_reservationdetails_on_reservation_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "date"
    t.string   "address"
    t.integer  "customer_id"
    t.integer  "local_id"
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["customer_id"], name: "index_reservations_on_customer_id", using: :btree
  add_index "reservations", ["local_id"], name: "index_reservations_on_local_id", using: :btree
  add_index "reservations", ["payment_id"], name: "index_reservations_on_payment_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
